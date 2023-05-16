// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart' show SizedBox;

extension Spacing on num {
  /// Extension to convert a [number] to a [SizedBox] for vertical spacing
  /// ```dart
  /// 10.vGap // SizedBox(height: 10)
  /// ```
  SizedBox get vGap => SizedBox(height: toDouble());
//100.vGap
  /// Extension to convert a [number] to a [SizedBox] for horizontal spacing
  /// ```dart
  /// 10.hGap // SizedBox(width: 10)
  /// ```
  SizedBox get hGap => SizedBox(width: toDouble());
}

extension WeekdayX on int {
  String get weekdayName {
    switch (this) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return 'Monday';
    }
  }

  String get getShortWeekdayName {
    switch (this) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return 'Mon';
    }
  }
}
