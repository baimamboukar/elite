import 'package:elite_one/src/shared/extensions/extensions.dart';
import 'package:flutter/material.dart';

extension Textheme on BuildContext {
  TextStyle get bodytext => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get bodylarge => Theme.of(this).textTheme.bodyLarge!;

  TextStyle get titletext => Theme.of(this).textTheme.displayMedium!;
  TextStyle get secondaryTitle => Theme.of(this).textTheme.bodyMedium!.copyWith(
        color: colorScheme.secondary,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  TextStyle get boldBlackTitle => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  TextStyle get boldActionPrimary => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.primary,
      );

  TextStyle get boldActionOnPrimary => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: colorScheme.onPrimary,
      );
  TextStyle get boldActionBlack => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: colorScheme.onBackground.withOpacity(
          .65,
        ),
      );
}
