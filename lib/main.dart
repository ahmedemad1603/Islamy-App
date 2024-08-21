import 'package:flutter/material.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/hadeth_content/hadeth_content_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/settings_provider.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
      ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp()
      )
  );
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    settingsProvider.loadTheme();
    settingsProvider.loadLang();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppStyle.lightTheme,
      themeMode: settingsProvider.themeMode,
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
      locale: Locale(settingsProvider.selectedLanguage),
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraContentScreen.routeName: (_)=>SuraContentScreen(),
        HadethContentScreen.routeName: (_)=>HadethContentScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
