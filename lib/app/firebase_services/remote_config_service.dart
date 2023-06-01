import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  static Future<void> get initialize async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    // await remoteConfig.setConfigSettings(
    //   RemoteConfigSettings(
    //     fetchTimeout: const Duration(minutes: 1),
    //     minimumFetchInterval: const Duration(hours: 1),
    //   ),
    // );
    // await remoteConfig.setDefaults(
    //   const {
    //     'show_marketing_banner': false,
    //     'champions_league_day': false,
    //     'theme': 'app_theme',
    //   },
    // );
    // await remoteConfig.fetchAndActivate();
  }
}
