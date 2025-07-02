import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';
import 'package:kjg_muf_app/l10n/l10n_extension.dart';
import 'package:kjg_muf_app/providers/attachment_cache_provider.dart';
import 'package:kjg_muf_app/providers/event_list_provider.dart';
import 'package:kjg_muf_app/ui/screens/attachment_screen.dart';
import 'package:kjg_muf_app/ui/screens/event_detail_screen.dart';

class AttachmentsScreen extends ConsumerStatefulWidget {
  const AttachmentsScreen({super.key});

  @override
  ConsumerState<AttachmentsScreen> createState() => _AttachmentsScreenState();
}

class _AttachmentsScreenState extends ConsumerState<AttachmentsScreen> {
  final SearchController _controller = SearchController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showDeleteDialog(BuildContext context, WidgetRef ref) {
    final loc = context.localizations;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(loc.attachmentsDeleteTitle),
        content: Text(loc.attachmentsDeleteMessage),
        actions: [
          ElevatedButton(
            onPressed: () {
              _onDeleteTap(context, ref);
              Navigator.of(context).pop();
            },
            child: Text(loc.yes),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(loc.no),
          ),
        ],
      ),
    );
  }

  void _onDeleteTap(BuildContext context, WidgetRef ref) {
    ref.read(attachmentCacheProvider.notifier).deleteAll();
  }

  void _onEventTap(BuildContext context, MidaEvent event) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EventDetailScreen(event: event),
      ),
    );
  }

  void _onAttachmentTap(BuildContext context, EventAttachment attachment) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AttachmentScreen(attachment: attachment),
      ),
    );
  }

  Future<void> _onAttachmentDelete(
    WidgetRef ref,
    EventAttachment attachment,
  ) async {
    await ref
        .read(attachmentCacheProvider.notifier)
        .removeAttachment(attachment);
  }

  @override
  Widget build(BuildContext context) {
    final attachments = ref.watch(attachmentCacheProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.savedAttachments),
        actions: [
          IconButton(
            onPressed: () => _showDeleteDialog(context, ref),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: switch (attachments) {
        AsyncValue(:final valueOrNull?) => _data(context, valueOrNull, ref),
        _ => _loading(),
      },
    );
  }

  Widget _loading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _data(
    BuildContext context,
    List<EventAttachment> attachments,
    WidgetRef ref,
  ) {
    Map<int, List<EventAttachment>> grouped = {};
    for (var a in attachments) {
      grouped.putIfAbsent(a.eventId, () => []).add(a);
    }
    for (var key in grouped.keys) {
      grouped[key]?.sort((a, b) => a.displayName.compareTo(b.displayName));
    }

    final events = ref.watch(eventListProvider).valueOrNull ?? [];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchAnchor(
            searchController: _controller,
            isFullScreen: true,
            viewOnClose: _controller.clear,
            builder: (context, controller) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  readOnly: true,
                  onTap: _controller.openView,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: context.localizations.search,
                    // fix for text misalignment
                    prefixIconConstraints: BoxConstraints(minWidth: 48),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              );
            },
            suggestionsBuilder: (context, controller) =>
                _suggestionsBuilder(controller.text, attachments, events),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(context.localizations.attachmentsDescription),
          ),
          for (var group in grouped.entries) ...[
            _attachmentGroup(
              context,
              ref,
              event: events.where((e) => e.id == group.key).firstOrNull,
              attachments: group.value,
            ),
          ],
          SafeArea(child: Container()),
        ],
      ),
    );
  }

  Iterable<Widget> _suggestionsBuilder(
    String query,
    List<EventAttachment> attachments,
    List<MidaEvent> events,
  ) {
    final searchParts = query.split(" ").map((p) => p.toLowerCase());

    // combine attachment with event
    final List<(EventAttachment, MidaEvent?)> attachmentsWithEvents = [];
    for (var attachment in attachments) {
      final event = events.where((e) => e.id == attachment.eventId).firstOrNull;
      attachmentsWithEvents.add((attachment, event));
    }

    // method to check if attachment or event contains all parts of search
    bool matchesSearch(EventAttachment attachment, MidaEvent? event) {
      final attachmentName = attachment.displayName.toLowerCase();
      for (var part in searchParts) {
        if (!attachmentName.contains(part) &&
            !(event?.title.toLowerCase().contains(part) ?? false)) {
          return false;
        }
      }
      return true;
    }

    // only show attachments that contain every part (in name or event name)
    final matchingAttachments =
        attachmentsWithEvents.where((s) => matchesSearch(s.$1, s.$2));

    return matchingAttachments.map(
      (a) {
        final attachment = a.$1;
        final event = a.$2;
        return ListTile(
          dense: true,
          title: Text(
            attachment.displayName,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          subtitle: event != null ? Text(event.title) : null,
          leading: Icon(a.$1.fileType.icon),
          onTap: () {
            _controller.closeView("");
            _onAttachmentTap(context, attachment);
          },
        );
      },
    );
  }

  Widget _attachmentGroup(
    BuildContext context,
    WidgetRef ref, {
    required MidaEvent? event,
    required List<EventAttachment> attachments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            event?.title ?? context.localizations.notFound,
            style: TextStyle(fontSize: 18),
          ),
          onTap: event != null ? () => _onEventTap(context, event) : null,
        ),
        for (var attachment in attachments)
          Dismissible(
            key: Key(attachment.key),
            onDismissed: (direction) => _onAttachmentDelete(ref, attachment),
            background: Container(color: Colors.red),
            child: ListTile(
              dense: true,
              title: Text(
                attachment.displayName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              leading: Icon(attachment.fileType.icon),
              onTap: () => _onAttachmentTap(context, attachment),
            ),
          ),
      ],
    );
  }
}
