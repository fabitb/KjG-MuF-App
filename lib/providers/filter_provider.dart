import 'package:kjg_muf_app/model/filter_settings.dart';
import 'package:kjg_muf_app/utils/shared_preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_provider.g.dart';

@riverpod
class Filter extends _$Filter {
  @override
  FilterSettings build() {
    return SharedPreferencesService.instance.filterSettings ?? FilterSettings();
  }

  void setFilterSettings(FilterSettings newValue) {
    state = newValue;
    ref.notifyListeners();

    SharedPreferencesService.instance.filterSettings = newValue;
  }
}

@riverpod
class FilterText extends _$FilterText {
  @override
  String build() {
    return "";
  }

  void setFilterText(String newValue) {
    state = newValue;
  }
}
