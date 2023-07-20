import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:intopic/features/common/presentation/utils/extensions/extensions.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  static const languages = {
    'en': '🇨🇦 English',
    'fr': '🇫🇷 Français',
    'es': '🇪🇸 Español',
    'de': '🇩🇪 Deutsch',
    'ko': '🇰🇷 한국어',
  };

  @override
  Widget build(BuildContext context) {
    final themeMode = useState(Get.theme.brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);



    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.settings),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(context.tr.general),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context) {
                  Get.bottomSheet<void>(
                    Container(
                      decoration:  BoxDecoration(
                        color: context.surfaceColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: languages.entries.map((e) =>
                        ListTile(
                          title: Text(e.value),
                          onTap: () {
                            Get..back<void>()
                            ..updateLocale(Locale(e.key));
                          },
                        ),).toList()
                        ,
                      ),
                    ),
                    isScrollControlled: true,
                  );

                },
                leading: const Icon(Icons.language),
                title: Text(context.tr.language),
                value: Text(languages[Get.locale?.languageCode] ?? '🇺🇸 English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  themeMode.value = value ? ThemeMode.dark : ThemeMode.light;
                  Get.changeThemeMode(themeMode.value);
                },
                initialValue: themeMode.value == ThemeMode.dark,
                leading: const Icon(Icons.format_paint),
                title: Text(context.tr.enableDarkMode),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
