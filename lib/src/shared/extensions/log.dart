import 'dart:developer' as dev;

extension DartDevX on Object {
  void log() {
    dev.log(
      toString(),
    );
  }
}
