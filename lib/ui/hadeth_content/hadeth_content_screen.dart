import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';

import '../../style/app_style.dart';

class HadethContentScreen extends StatelessWidget
{
  static const String routeName = "HadethContentScreen";

  const HadethContentScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    HadethModel args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
          title: Text(args.hadethTitle),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                elevation: 30,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(args.hadethContent, style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
