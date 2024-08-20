import 'package:flutter/material.dart';
import 'package:islami_app/style/app_style.dart';
import 'package:islami_app/ui/home/tabs/hadeth_tab.dart';
import 'package:islami_app/ui/home/tabs/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sebha_tab.dart';
import 'package:islami_app/ui/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget
{
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage( AppStyle.isDark
                ?"assets/images/dark_background.png"
                :"assets/images/background.png"
            ),
            fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islamy"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/quran_icn.png"),
                  ),
                  label: "Quran"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/hadeth_icn.png"),
                  ),
                  label: "Hadeth"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha_icn.png"),
                  ),
                  label: "Sebha"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/radio_icn.png"),
                  ),
                  label: "Radio"
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(
                      Icons.settings
                  ),
                  label: "Settings"
              )
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
