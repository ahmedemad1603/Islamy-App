import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier
{
  ThemeMode themeMode = ThemeMode.light;
  String selectedLanguage = "en";

  changeThemeMode(ThemeMode newMode)
  {
    if(newMode == themeMode) return;
    themeMode = newMode;
    notifyListeners();
  }

  changeSelectedLanguage(String newLang)
  {
    if(newLang == selectedLanguage) return;
    selectedLanguage = newLang;
    notifyListeners();
  }
}