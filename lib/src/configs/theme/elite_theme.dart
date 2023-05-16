import 'package:elite_one/src/configs/theme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

@immutable
class EliteTheme extends ThemeExtension<EliteTheme> {
  const EliteTheme({
    this.primaryColor = const Color(0xFF03C988),
    this.tertiaryColor = const Color(0xFFD2001A),
    this.neutralColor = const Color(0xFFEEEEEE),
  });

  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  Scheme _scheme() {
    final base = CorePalette.of(primaryColor.value);
    final primary = base.primary;
    final tertiary = CorePalette.of(tertiaryColor.value).primary;
    final neutral = CorePalette.of(neutralColor.value).neutral;
    return Scheme(
      primary: primary.get(0),
      onPrimary: primary.get(100),
      primaryContainer: primary.get(90),
      onPrimaryContainer: primary.get(10),
      secondary: base.secondary.get(40),
      onSecondary: base.secondary.get(100),
      secondaryContainer: base.secondary.get(90),
      onSecondaryContainer: base.secondary.get(10),
      tertiary: tertiary.get(40),
      onTertiary: tertiary.get(100),
      tertiaryContainer: tertiary.get(90),
      onTertiaryContainer: tertiary.get(10),
      error: base.error.get(40),
      onError: base.error.get(100),
      errorContainer: base.error.get(90),
      onErrorContainer: base.error.get(10),
      background: neutral.get(99),
      onBackground: neutral.get(10),
      surface: neutral.get(99),
      onSurface: neutral.get(10),
      outline: base.neutralVariant.get(50),
      outlineVariant: base.neutralVariant.get(80),
      surfaceVariant: base.neutralVariant.get(90),
      onSurfaceVariant: base.neutralVariant.get(30),
      shadow: neutral.get(0),
      scrim: neutral.get(0),
      inverseSurface: neutral.get(20),
      inverseOnSurface: neutral.get(95),
      inversePrimary: primary.get(80),
    );
  }

  ThemeData _base(ColorScheme colorScheme) {
    final primaryTextTheme = GoogleFonts.poppinsTextTheme();
    final isLight = colorScheme.brightness == Brightness.light;
    final textTheme = primaryTextTheme.copyWith(
      displayLarge: primaryTextTheme.displayLarge!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
      titleLarge: primaryTextTheme.titleLarge!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
      titleMedium: primaryTextTheme.titleMedium!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
      titleSmall: primaryTextTheme.titleSmall!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
      bodyLarge: primaryTextTheme.bodyLarge!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
      bodyMedium: primaryTextTheme.bodyMedium!.copyWith(
        color: colorScheme.onBackground.withOpacity(.65),
      ),
    );

    return ThemeData(
      useMaterial3: true,
      canvasColor: colorScheme.background,
      extensions: [this],
      colorScheme: colorScheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: isLight ? neutralColor : colorScheme.background,
      textTheme: textTheme.apply(
        displayColor:
            isLight ? colorScheme.onBackground.withOpacity(.65) : Colors.white,
        bodyColor:
            isLight ? colorScheme.onBackground.withOpacity(.65) : Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: isLight ? colorScheme.primary : colorScheme.surface,
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.35),
        selectedLabelStyle: textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w600,
          color: colorScheme.onBackground.withOpacity(.6),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.onSurface,
        unselectedLabelColor: colorScheme.onSurface,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: colorScheme.primary, width: 2),
          ),
        ),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary, size: 28),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.secondaryContainer,
        foregroundColor: colorScheme.onSecondaryContainer,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: isLight ? neutralColor : colorScheme.surface,
        selectedIconTheme:
            IconThemeData(color: colorScheme.onSecondaryContainer),
        indicatorColor: colorScheme.secondaryContainer,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: isLight ? colorScheme.primary : colorScheme.surface,
        // color: isLight ? colorScheme.primary : colorScheme.surface,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: isLight ? neutralColor : colorScheme.surface,
      ),
    );
  }

  ThemeData toThemeData(Brightness brightness) {
    final colorScheme = _scheme().toColorScheme(brightness);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  @override
  ThemeExtension<EliteTheme> copyWith({
    Color? primaryColor,
    Color? tertiaryColor,
    Color? neutralColor,
  }) =>
      EliteTheme(
        primaryColor: primaryColor ?? this.primaryColor,
        tertiaryColor: tertiaryColor ?? this.tertiaryColor,
        neutralColor: neutralColor ?? this.neutralColor,
      );

  @override
  EliteTheme lerp(
    covariant ThemeExtension<EliteTheme>? other,
    double t,
  ) {
    if (other is! EliteTheme) return this;
    return EliteTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }
}

extension on Scheme {
  ColorScheme toColorScheme(Brightness brightness) {
    if (brightness == Brightness.dark) return darkColorScheme;
    return lightColorScheme;
  }
}
