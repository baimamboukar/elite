import 'package:elite_one/src/shared/extensions/log.dart';
import 'package:elite_one/src/shared/models/notification_payload.dart';
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

  Future<void> senPushNotification({required Payload payload}) async {
    final playerID = await getDeviceID;

    final notification = OSCreateNotification(
      playerIds: [playerID],
      content: payload.contents['en'],
      heading: payload.title,
      additionalData: payload.data,
    );

    await OneSignal.shared.postNotification(notification);
  }

  Future<String> get getDeviceID async {
    // Get the device state
    final deviceState = await OneSignal.shared.getDeviceState();

    // Retrieve the Player ID
    final playerId = deviceState?.userId ?? '';
    return playerId;
  }
}
