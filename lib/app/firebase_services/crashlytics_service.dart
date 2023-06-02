// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show FlutterError, PlatformDispatcher;

class CrashlyticService {
  static Future<void> get initialize async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    //catch errors from the framework
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
