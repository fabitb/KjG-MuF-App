import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioWidget extends StatefulWidget {
  final String? displayName;
  final File file;

  const AudioWidget({super.key, required this.file, this.displayName});

  @override
  State<AudioWidget> createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  late final AudioPlayer _player;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();

    _player = AudioPlayer();
    _player.setAudioSource(AudioSource.file(widget.file.path));

    _player.positionStream.listen(
      (pos) => setState(() {
        _position = pos;
      }),
    );

    _player.durationStream.listen(
      (dur) => setState(() {
        if (dur != null) _duration = dur;
      }),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours.remainder(60);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return hours > 0 ? '$hours:$minutes:$seconds' : '$minutes:$seconds';
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final displayName = widget.displayName;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (displayName != null)
              Text(
                displayName,
                style: TextStyle(fontSize: 18),
              ),
            Slider(
              min: 0.0,
              max: _duration.inMilliseconds.toDouble(),
              value: _position.inMilliseconds
                  .clamp(0, _duration.inMilliseconds)
                  .toDouble(),
              onChanged: (value) {
                _player.seek(Duration(milliseconds: value.toInt()));
              },
            ),
            Text(
              '${_formatDuration(_position)} / ${_formatDuration(_duration)}',
              style: TextStyle(fontSize: 14),
            ),
            StreamBuilder<PlayerState>(
              stream: _player.playerStateStream,
              builder: (context, snapshot) {
                final playerState = snapshot.data;
                final isPlaying = playerState?.playing ?? false;

                return IconButton(
                  icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  iconSize: 48,
                  onPressed: () {
                    if (isPlaying) {
                      _player.pause();
                    } else {
                      _player.play();
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
