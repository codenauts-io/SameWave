import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/resources/theme/app_colors.dart';
import 'package:same_wave_app/screens/settings/settings.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../provider/settings/settings_state.dart';

class SettingsScreenView extends StatelessWidget {
  final SettingsScreenState state;
  const SettingsScreenView(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;
    final SettingsState settingsState = Provider.of<SettingsState>(context);

    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(image: AppAssets.menuBackground),
          Consumer(
            builder: (context, value, child) {
              return SettingsList(
                lightTheme: SettingsThemeData(
                  settingsListBackground: AppColors.transparent,
                  settingsSectionBackground: secondaryColor,
                ),
                darkTheme: SettingsThemeData(
                  settingsListBackground: AppColors.transparent,
                  settingsSectionBackground: secondaryColor,
                ),
                sections: [
                  SettingsSection(
                    title: const SizedBox(),
                    tiles: <SettingsTile>[
                      SettingsTile.switchTile(
                        onToggle: (value) {
                          settingsState.setCustomThemeSwitchValue(value);
                        },
                        initialValue: settingsState.customThemeSwitchValue,
                        leading: const Icon(Icons.format_paint),
                        title: const Text("Custom Theme"),
                      ),
                      if (settingsState.customThemeSwitchValue) ...[
                        SettingsTile.navigation(
                          leading: const Icon(Icons.system_update),
                          title: const Text("Default"),
                          trailing: Radio<bool>(
                            key: key,
                            value: true,
                            groupValue: settingsState.themeMode == ThemeMode.system,
                            onChanged: (value) {
                              settingsState.savePrefsThemeMode(ThemeMode.system);
                            },
                          ),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.light_mode),
                          title: const Text("Light Mode"),
                          trailing: Radio<bool>(
                            key: key,
                            value: true,
                            groupValue: settingsState.themeMode == ThemeMode.light,
                            onChanged: (value) {
                              settingsState.savePrefsThemeMode(ThemeMode.light);
                            },
                          ),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text("Dark Mode"),
                          trailing: Radio<bool>(
                            key: key,
                            value: true,
                            groupValue: settingsState.themeMode == ThemeMode.dark,
                            onChanged: (value) {
                              settingsState.savePrefsThemeMode(ThemeMode.dark);
                            },
                          ),
                        ),
                      ],
                    ],
                  ),
                  // SettingsSection(
                  //   title: const SizedBox(),
                  //   tiles: <SettingsTile>[
                  //     SettingsTile.switchTile(
                  //       onToggle: (value) {
                  //         settingsState.setCustomLanguageSwitchValue(value);
                  //       },
                  //       initialValue: settingsState.customLanguageSwitchValue,
                  //       leading: const Icon(Icons.language),
                  //       title: Text(appLocalizations.settingsView_customLanguage),
                  //     ),
                  //     if (settingsState.customLanguageSwitchValue) ...[
                  //       SettingsTile.navigation(
                  //         leading: const Text('🇵🇱'),
                  //         title: Text(appLocalizations.settingsView_polish),
                  //         trailing: Radio<bool>(
                  //           key: key,
                  //           value: true,
                  //           groupValue: settingsState.appLocale == const Locale('pl'),
                  //           onChanged: (value) {
                  //             settingsState.savePrefsLanguage(const Locale('pl'));
                  //           },
                  //         ),
                  //       ),
                  //       SettingsTile.navigation(
                  //         leading: const Text('🏴󠁧󠁢󠁥󠁮󠁧󠁿'),
                  //         title: Text(appLocalizations.settingsView_english),
                  //         trailing: Radio<bool>(
                  //           key: key,
                  //           value: true,
                  //           groupValue: settingsState.appLocale == const Locale('en'),
                  //           onChanged: (value) {
                  //             settingsState.savePrefsLanguage(const Locale('en'));
                  //           },
                  //         ),
                  //       ),
                  //     ],
                  //   ],
                  // ),
                ],
              );
            },
          ),
          const CustomMenu(),
          const Column(
            children: [
              Center(
                child: Card(
                  child: Text(
                    'Settings',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
