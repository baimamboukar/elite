import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;

class AppcheckService {
  static Future<void> get initialize async {
    // app check
    final appCheck = FirebaseAppCheck.instance;

    await appCheck.activate(
      webRecaptchaSiteKey: 'recaptcha-v3-site-key',
      androidProvider:
          kReleaseMode ? AndroidProvider.playIntegrity : AndroidProvider.debug,
    );
  }
}
