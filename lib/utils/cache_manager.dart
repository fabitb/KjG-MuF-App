import 'package:flutter_cache_manager/flutter_cache_manager.dart';

abstract class KjGCacheManager {
  static const key = 'kjgCacheKey';

  static CacheManager instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 30),
      maxNrOfCacheObjects: 1000,
    ),
  );
}
