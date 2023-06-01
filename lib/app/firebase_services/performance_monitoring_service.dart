import 'package:firebase_performance/firebase_performance.dart';

class PerformanceMonitoring {
  static Future<void> get initialize async {
    final performance = FirebasePerformance.instance;
    await performance.setPerformanceCollectionEnabled(true);
  }
}
