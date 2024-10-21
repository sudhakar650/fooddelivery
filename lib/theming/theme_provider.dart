import 'package:flutter/material.dart';

import 'dark_mode.dart';
import 'light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;

  // getter for theme data
  ThemeData get themedata => _themeData;

  // getter for is dark mode
  bool get isDarkMode => _themeData == darkMode;

  void toggleTheme(){
    if (_themeData == lightMode){
      _themeData = darkMode;
    }else{
      _themeData = lightMode;
    }
    notifyListeners();
  }
}