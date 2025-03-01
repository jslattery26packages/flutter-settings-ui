import 'package:example/screens/gallery/android_settings_screen.dart';
import 'package:example/screens/gallery/cross_platform_settings_screen.dart';
import 'package:example/screens/gallery/ios_developer_screen.dart';
import 'package:example/screens/gallery/web_chrome_settings.dart';
import 'package:example/utils/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: Text('Gallery')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('Hey'),
              ),
            ),
          ),
          Expanded(
            child: SettingsList(
              sections: [
                SettingsSection(
                  title: Text('General'),
                  tiles: [
                    SettingsTile.navigation(
                      title: Text('Abstract settings screen'),
                      leading: Icon(CupertinoIcons.wrench),
                      description:
                          Text('UI created to show plugin\'s possibilities'),
                      onPressed: (context) {
                        Navigation.navigateTo(
                          context: context,
                          screen: CrossPlatformSettingsScreen(),
                          style: NavigationRouteStyle.material,
                        );
                      },
                    )
                  ],
                ),
                SettingsSection(
                  title: Text('Replications'),
                  tiles: [
                    SettingsTile.navigation(
                      leading: Icon(CupertinoIcons.settings),
                      title: Text('iOS Developer Screen'),
                      onPressed: (context) {
                        Navigation.navigateTo(
                          context: context,
                          screen: IosDeveloperScreen(),
                          style: NavigationRouteStyle.cupertino,
                        );
                      },
                    ),
                    SettingsTile.navigation(
                      leading: Icon(Icons.settings),
                      title: Text('Android Settings Screen'),
                      onPressed: (context) {
                        Navigation.navigateTo(
                          context: context,
                          screen: AndroidSettingsScreen(),
                          style: NavigationRouteStyle.material,
                        );
                      },
                    ),
                    SettingsTile.navigation(
                      leading: Icon(Icons.web),
                      title: Text('Web Settings'),
                      onPressed: (context) {
                        Navigation.navigateTo(
                          context: context,
                          screen: WebChromeSettings(),
                          style: NavigationRouteStyle.material,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
