import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/sura_content/sura_content_item.dart';
import 'package:provider/provider.dart';

import '../../style/app_style.dart';
import '../settings_provider.dart';

class SuraContentScreen extends StatefulWidget
{
  static const String routeName = "SuraContent";

  SuraContentScreen({super.key});

  @override
  State<SuraContentScreen> createState() => _SuraContentScreenState();
}

class _SuraContentScreenState extends State<SuraContentScreen> {
  @override
  Widget build(BuildContext context)
  {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    SuraContentArgs args = ModalRoute.of(context)?.settings.arguments as SuraContentArgs;

    if(verses.isEmpty)
      {loadFile(args.index);}

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage( provider.themeMode == ThemeMode.dark
                  ?"assets/images/dark_background.png"
                  :"assets/images/background.png"
              ),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName),
        ),
        body: Card(
          margin: EdgeInsets.all(18),
          child: verses.isEmpty
              ? Center(child: CircularProgressIndicator(),)
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                itemBuilder: (context, index) => SuraContentItem(verse: verses[index], index: index),
                separatorBuilder: (context, index) => Divider(),
                itemCount: verses.length
          ),
              ),
        ),
      ),
    );
  }

  List<String> verses = [];

  loadFile(int index) async
  {
    String suraContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    setState(() {
      verses = suraContent.split("\n");
    });
  }
}

class SuraContentArgs
{
  String suraName;
  int index;

  SuraContentArgs({required this.suraName, required this.index});
}