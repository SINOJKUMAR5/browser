import 'package:browser/pages/dark_theme_page.dart';
import 'package:browser/pages/light_theme_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = light_theme;
  ThemeData get themeData {
    return _themeData;
  }

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  bool get isdark => _themeData == dark_theme;

  void toggleTheme() {
    if (_themeData == light_theme) {
      themeData = dark_theme;
    } else {
      themeData = light_theme;
    }
  }
}
