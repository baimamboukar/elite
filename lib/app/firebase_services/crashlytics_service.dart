import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class CrashlyticService {
  static Future<void> get initialize async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    //catch errors from the framework
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    //catch errors from async functions
  }
}
