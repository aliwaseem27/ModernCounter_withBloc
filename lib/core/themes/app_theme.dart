import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticleColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xff1a2127);
  static Color darkPrimaryColor = const Color(0xff1a2127);
  static Color darkAccentColor = Colors.blueGrey.shade600;
  static Color darkParticleColor = const Color(0x441c2a3d);

  const AppTheme._();

  static final lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: lightAccentColor,
      brightness: Brightness.light,
    ),
    backgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: darkAccentColor,
      brightness: Brightness.dark,
    ),
    backgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightBackgroundColor
          : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}
