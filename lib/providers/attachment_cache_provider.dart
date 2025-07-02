import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kjg_muf_app/database/model/event.dart';
import 'package:kjg_muf_app/database/model/event_attachment.dart';
import 'package:kjg_muf_app/utils/cache_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attachment_cache_provider.g.dart';

@Riverpod(keepAlive: true)
class AttachmentCache extends _$AttachmentCache {
  CacheManager get _cache => KjGCacheManager.instance;

  @override
  Future<List<EventAttachment>> build() async {
    // prevent exception after app install
    final exists = await _cache.config.repo.exists();
    if (!exists) return [];

    final allCacheObjects = await _cache.config.repo.getAllObjects();

    return allCacheObjects
        .map((e) => EventAttachment.fromCacheObject(e))
        .nonNulls
        .toList();
  }

  /// removes attachments of events that are outdated, refreshes others
  Future<void> cleanUp({required List<MidaEvent> events}) async {
    final value = await future;
    final eventIds = events.map((e) => e.id).toList();

    for (var attachment in value) {
      // check if event still exists
      if (!eventIds.contains(attachment.eventId)) {
        // delete file
        await _cache.removeFile(attachment.key);
      } else if (attachment.cacheObject case CacheObject cacheObject) {
        // update -> sets touched -> keep longer
        await _cache.config.repo.update(cacheObject);
      }
    }

    ref.invalidateSelf();
  }

  Future<void> deleteAll() async {
    await _cache.store.emptyCache();
    ref.invalidateSelf();
  }

  Future<FileInfo> downloadAttachment(
    EventAttachment attachment, {
    bool force = false,
  }) async {
    final fileInfo = await _cache.downloadFile(
      attachment.url,
      key: attachment.key,
      force: force,
    );
    ref.invalidateSelf();
    return fileInfo;
  }

  Future<void> removeAttachment(EventAttachment attachment) async {
    await _cache.removeFile(attachment.key);
    // wait until provider reload is done, otherwise swipe to dismiss exception
    await ref.refresh(attachmentCacheProvider.future);
  }

  Future<File> getSingleFile(EventAttachment attachment) async {
    final file = await _cache.getSingleFile(
      attachment.url,
      key: attachment.key,
    );
    ref.invalidateSelf();
    return file;
  }
}

@riverpod
bool attachmentCached(Ref ref, {required String key}) {
  final allCached = ref.watch(attachmentCacheProvider);

  if (allCached.valueOrNull case List<EventAttachment> list) {
    return list.map((e) => e.key).contains(key);
  }
  return false;
}
