import 'package:crafty_bay/app/extiontions/localization_extention.dart';
import 'package:crafty_bay/app/providers/locale_provider.dart';
import 'package:crafty_bay/app/providers/theme_provider.dart';
import 'package:crafty_bay/features/auth/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              const AppLogo(),
              const SizedBox(height: 16),
              const LocalChangerdropdown(),
              const SizedBox(height: 8),
              const ThemeChangerdropdown(),
              const Spacer(),
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text('${localizations.version} 1.0.0'),
            ],
          ),
        ),
      ),
    );
  }
}

class LocalChangerdropdown extends StatelessWidget {
  const LocalChangerdropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, localeProvider, _) {
        return DropdownButton<Locale>(
          value: localeProvider.currentLocale,
          items: localeProvider.supportLocales.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e.languageCode.toUpperCase()),
            );
          }).toList(),
          onChanged: (Locale? newLocale) {
            if (newLocale != null) {
              localeProvider.changeLocale(newLocale);
            }
          },
        );
      },
    );
  }
}

class ThemeChangerdropdown extends StatelessWidget {
  const ThemeChangerdropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return DropdownButton<ThemeMode>(
          value: themeProvider.currentThemeMode,
          items: themeProvider.themeModes.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e.name.toUpperCase()),
            );
          }).toList(),
          onChanged: (ThemeMode? newThemeMode) {
            if (newThemeMode != null) {
              themeProvider.changeThemeMode(newThemeMode);
            }
          },
        );
      },
    );
  }
}