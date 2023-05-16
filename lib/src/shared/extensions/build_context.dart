/// [show] keyworkd is used to optimze imports
import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        ColorScheme,
        MediaQuery,
        MediaQueryData,
        Orientation,
        ScaffoldMessenger,
        Size,
        SnackBar,
        Text,
        TextTheme,
        Theme,
        ThemeData;

extension EcoBuildContextExtension on BuildContext {
  /// Get [MediaQueryData] of the current [BuildContext].
  /// ```dart
  /// context.mediaQuery
  /// context.size
  /// context.width
  /// context.height
  /// context.orientation
  /// context.isPortrait
  /// context.isLandscape
  /// ```

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;
  Orientation get orientation => mediaQuery.orientation;
  bool get isPortrait => orientation == Orientation.portrait;
  bool get isLandscape => orientation == Orientation.landscape;

  /// Get [ColorScheme] of the current [BuildContext].

  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // Show snackbar
  void snackbar({required String message, required Color backgroundColor}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(message),
      ),
    );
  }
}
