import 'package:flutter/material.dart';
import 'package:kjg_muf_app/l10n/generated/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get localizations {
    return AppLocalizations.of(this)!;
  }
}
