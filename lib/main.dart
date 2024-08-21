import 'package:flutter/material.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/hadeth_content/hadeth_content_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppStyle.lightTheme,
      themeMode: AppStyle.isDark? ThemeMode.dark : ThemeMode.light,
      darkTheme: AppStyle.darkTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale("ar"),
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraContentScreen.routeName: (_)=>SuraContentScreen(),
        HadethContentScreen.routeName: (_)=>HadethContentScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
