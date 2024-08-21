import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/hadeth_tab.dart';
import 'package:islami_app/ui/home/tabs/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    RadioTab()
  ];

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy),
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
                  label: AppLocalizations.of(context)!.quran
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/hadeth_icn.png"),
                  ),
                  label: AppLocalizations.of(context)!.hadeth
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha_icn.png"),
                  ),
                  label: AppLocalizations.of(context)!.sebha
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(
                    AssetImage("assets/images/radio_icn.png"),
                  ),
                  label: AppLocalizations.of(context)!.radio
              )
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
