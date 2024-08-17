import 'package:flutter/material.dart';
import 'package:islami_app/ui/hadeth_content/hadeth_content_screen.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff242424),
          ),
          centerTitle: true
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 40
          ),
          unselectedIconTheme: IconThemeData(
            size: 40
          )
        ),
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
          thickness: 3,
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
          elevation: 30,
          surfaceTintColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffB7935F),
            primary: Color(0xffB7935F),
            onPrimary: Colors.white,
            secondary: Color(0xffB7935F).withOpacity(0.57),
            onSecondary: Colors.black
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraContentScreen.routeName: (_)=>SuraContentScreen(),
        HadethContentScreen.routeName: (_)=>HadethContentScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
