import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
  primaryColor: primaryColorLight,
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor: scaffoldColorLight,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColorLight,
    surface: primaryColorLight,
    onSurface: primaryColorDark,
    brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
  ),
  secondaryHeaderColor: Colors.black54,
);

ThemeData dark = ThemeData(
  primaryColor: primaryColorDark,
  fontFamily: 'Montserrat',
  scaffoldBackgroundColor: scaffoldColorDark,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColorDark,
    surface: primaryColorDark,
    onSurface: primaryColorLight,
    brightness: Brightness.dark,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
  ),
  secondaryHeaderColor: scaffoldColorLight,
);

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? prefs;
  bool? _darkTheme;

  bool? get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme = true;
    _loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = !_darkTheme!;
    notifyListeners();
    _saveToPrefs();
  }

  initPrefs() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await initPrefs();
    _darkTheme = prefs!.getBool(key) ?? false;
    notifyListeners();
  }

  _saveToPrefs() async {
    await initPrefs();
    prefs!.setBool(key, _darkTheme!);
  }

  getCurrentStatusNavigationBarColor() {
    if (_darkTheme!) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black54,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xff000000),
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    }
  }
}
