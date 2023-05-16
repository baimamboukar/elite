extension EcocleanStringsX on String {
  String get capitalize {
    if (isNotEmpty) {
      return "${this[0].toUpperCase()}${substring(1)}";
    } else {
      return this;
    }
  }

  String get capitalizeFirstLetters {
    if (isNotEmpty) {
      return split(" ").map((e) => e.capitalize).join(" ");
    } else {
      return this;
    }
  }

  // 'Mon' -> 'Monday'
  String get weekDay {
    switch (this) {
      case 'Mon':
        return 'Monday';
      case 'Tue':
        return 'Tuesday';
      case 'Wed':
        return 'Wednesday';
      case 'Thu':
        return 'Thursday';
      case 'Fri':
        return 'Friday';
      case 'Sat':
        return 'Saturday';
      case 'Sun':
        return 'Sunday';
      default:
        return 'Monday';
    }
  }
}
