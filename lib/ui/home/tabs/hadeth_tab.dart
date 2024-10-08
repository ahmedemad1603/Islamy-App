import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/model/hadeth_model.dart';
import 'package:islami_app/ui/home/tabs/hadeth_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget
{
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context)
  {
    if(ahadethList.isEmpty)
      {loadFile();}

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_image.png")
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  width: 3,
                  color: Theme.of(context).colorScheme.onPrimaryContainer
                ),
                bottom: BorderSide(
                    width: 3,
                    color: Theme.of(context).colorScheme.onPrimaryContainer
                )
            )
          ),
          child: Text(
              AppLocalizations.of(context)!.ahadeth,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold
              )
          ),
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty
              ? Center(child: CircularProgressIndicator(),)
              :ListView.separated(itemBuilder: (context, index) => HadethItem(hadeth: ahadethList[index]),
              separatorBuilder: (context, index) => Divider(),
              itemCount: ahadethList.length
          ),
        )
      ],
    );
  }

  List<HadethModel> ahadethList = [];

  loadFile() async
  {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = content.split("#");
    for(int i = 0; i < ahadeth.length; i++)
      {
        List<String> oneHadethContent = ahadeth[i].trim().split('\n');
        String hadethTitle = oneHadethContent[0];
        oneHadethContent.removeAt(0);
        String hadethContent = oneHadethContent.join("\n");
        setState(() {
          ahadethList.add(HadethModel(hadethContent: hadethContent, hadethTitle: hadethTitle));
        });
      }
  }
}
