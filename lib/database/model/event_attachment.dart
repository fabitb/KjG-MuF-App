import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kjg_muf_app/ui/widgets/attachments_widget.dart';

part 'event_attachment.freezed.dart';

@freezed
sealed class EventAttachment with _$EventAttachment {
  static const eventIdSeparator = ":eventId:";

  const factory EventAttachment({
    required int eventId,
    required String name,
    required String url,
    CacheObject? cacheObject,
  }) = _EventAttachment;

  static EventAttachment? fromCacheObject(CacheObject cacheObject) {
    final parts = cacheObject.key.split(eventIdSeparator);
    if (parts.length == 2) {
      final eventId = int.tryParse(parts[0]) ?? 0;
      return EventAttachment(
        eventId: eventId,
        name: parts[1],
        url: cacheObject.url,
        cacheObject: cacheObject,
      );
    }
    return null;
  }
}

extension EventAttachmentExtension on EventAttachment {
  String get key => "$eventId${EventAttachment.eventIdSeparator}$name";

  FileType get fileType => FileType.getFileType(name);

  String get displayName => name.substring(name.indexOf('_') + 1);
}
