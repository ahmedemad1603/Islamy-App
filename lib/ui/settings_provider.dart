import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier
{
  ThemeMode themeMode = ThemeMode.light;
  String selectedLanguage = "en";
  SharedPreferences? prefs;

  changeThemeMode(ThemeMode newMode)
  {
    if(newMode == themeMode) return;
    themeMode = newMode;
    setThemeToCache(newMode);
    notifyListeners();
  }

  changeSelectedLanguage(String newLang)
  {
    if(newLang == selectedLanguage) return;
    selectedLanguage = newLang;
    setLangToCache(newLang);
    notifyListeners();
  }

  Future setThemeToCache(ThemeMode themeMode)async
  {
    prefs = await SharedPreferences.getInstance();
    String themeName = themeMode == ThemeMode.light? "Light" : "Dark";
    await prefs!.setString('theme', themeName);
  }

  Future setLangToCache(String selectedLanguage)async
  {
    prefs = await SharedPreferences.getInstance();
    String langName = selectedLanguage == "en"? "English" : "العربية";
    await prefs!.setString('lang', langName);
  }

  loadTheme()async
  {
    prefs = await SharedPreferences.getInstance();
    final String? themeName = prefs!.getString('theme');
    if(themeName != null)
      {
        themeMode = themeName == "Light"? ThemeMode.light : ThemeMode.dark;
        notifyListeners();
      }
  }

  loadLang()async
  {
    prefs = await SharedPreferences.getInstance();
    final String? langName = prefs!.getString('lang');
    if(langName != null)
    {
      selectedLanguage = langName == "English"? "en" : "ar";
      notifyListeners();
    }
  }

}