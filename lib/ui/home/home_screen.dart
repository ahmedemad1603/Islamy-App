import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/hadeth_tab.dart';
import 'package:islami_app/ui/home/tabs/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sebha_tab.dart';

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
          title: Text("Islami"),
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
              )
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
