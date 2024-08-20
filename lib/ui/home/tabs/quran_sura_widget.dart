import 'package:flutter/material.dart';
import 'package:islami_app/ui/sura_content/sura_content_screen.dart';

class QuranSura extends StatelessWidget
{
  String suraName;
  int versesNumber;
  int index;

  QuranSura({required this.index, required this.versesNumber, required this.suraName});

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraContentScreen.routeName, arguments: SuraContentArgs(suraName: suraName, index: index));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(child: Text(suraName, textAlign: TextAlign.center, style: Theme.of(context).textTheme.displayMedium)),
            Container(
              width: 5,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            Expanded(
                child: Text(
                    versesNumber.toString(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium
                )
            )
          ],
        ),
      ),
    );
  }
}
