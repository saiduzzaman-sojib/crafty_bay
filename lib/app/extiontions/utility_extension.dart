import 'package:crafty_bay/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension UtilityExtension on BuildContext {
  AppLocalizations get Localizations => AppLocalizations.of(this)!;
  TextTheme get textTheme => TextTheme.of(this);
}