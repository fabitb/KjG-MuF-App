import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class KjGCacheManager {
  static const key = 'kjgCacheKey';

  static CacheManager instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 90),
      maxNrOfCacheObjects: 100,
    ),
  );
}