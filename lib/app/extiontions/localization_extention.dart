import 'package:crafty_bay/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizationExtention  on BuildContext{
  AppLocalizations get localizations => AppLocalizations.of(this)!;
}