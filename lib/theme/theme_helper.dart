import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.cyan400,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.tealA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.h),
          ),
          shadowColor: colorScheme.primary,
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGray100,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary.withOpacity(0.54),
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray500,
          fontSize: 15.fSize,
          fontFamily: 'Roboto Flex',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 9.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 40.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Roboto Flex',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 23.fSize,
          fontFamily: 'Roboto Flex',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X3F000000),
    primaryContainer: Color(0XFF0A2753),
    secondary: Color(0XFF0A2753),
    secondaryContainer: Color(0XFF15B4B0),
    tertiary: Color(0XFF0A2753),
    tertiaryContainer: Color(0XFF15B4B0),

    // Background colors
    background: Color(0XFF0A2753),

    // Surface colors
    surface: Color(0XFF0A2753),
    surfaceTint: Color(0XFF292D32),
    surfaceVariant: Color(0XFF15B4B0),

    // Error colors
    error: Color(0XFF292D32),
    errorContainer: Color(0XFF00CEC9),
    onError: Color(0X3F000000),
    onErrorContainer: Color(0XFF0A2753),

    // On colors(text colors)
    onBackground: Color(0XFFC9C9C9),
    onInverseSurface: Color(0X3F000000),
    onPrimary: Color(0XFF292D32),
    onPrimaryContainer: Color(0XFFC9C9C9),
    onSecondary: Color(0XFFC9C9C9),
    onSecondaryContainer: Color(0XFF0A2753),
    onTertiary: Color(0XFFC9C9C9),
    onTertiaryContainer: Color(0XFF0A2753),

    // Other colors
    outline: Color(0XFF292D32),
    outlineVariant: Color(0XFF0A2753),
    scrim: Color(0XFF0A2753),
    shadow: Color(0XFF292D32),

    // Inverse colors
    inversePrimary: Color(0XFF0A2753),
    inverseSurface: Color(0XFF292D32),

    // Pending colors
    onSurface: Color(0XFFC9C9C9),
    onSurfaceVariant: Color(0XFF0A2753),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // BlueGray
  Color get blueGray100 => Color(0XFFD5D5D5);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray500 => Color(0XFF69778A);
  Color get blueGray800 => Color(0XFF39404B);
  Color get blueGray900 => Color(0XFF282B2C);

  // BlueGraya
  Color get blueGray9003a => Color(0X3A263238);

  // Cyan
  Color get cyan400 => Color(0XFF23E9E4);

  // DeepOrange
  Color get deepOrange500 => Color(0XFFFF5733);
  Color get deepOrangeA100 => Color(0XFFFF967F);

  // Gray
  Color get gray200 => Color(0XFFEDEEEE);
  Color get gray500 => Color(0XFFA5A5A5);

  // Teal
  Color get tealA700 => Color(0XFF16B5B1);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
