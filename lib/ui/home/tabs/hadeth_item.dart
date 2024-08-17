import 'package:flutter/material.dart';
import 'package:islami_app/model/hadeth_model.dart';

class HadethItem extends StatelessWidget
{
  HadethModel hadeth;

  HadethItem({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed("HadethContentScreen", arguments: hadeth );
      },
      child: Text(
        hadeth.hadethTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal
        ),
      ),
    );
  }
}
