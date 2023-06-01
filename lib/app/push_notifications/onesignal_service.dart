import 'package:elite_one/src/shared/extensions/log.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OnesignalService {
  static Future<void> get initialize async {
    //Remove this method to stop OneSignal Debugging
    await OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    await OneSignal.shared.setAppId(dotenv.get('ONE_SIGNAL_APP_ID'));

    await OneSignal.shared.promptUserForPushNotificationPermission().then(
      (accepted) {
        '[ONESIGNAL] => accepted: $accepted'.log();
      },
    );
  }
}
