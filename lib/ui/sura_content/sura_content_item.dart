import 'package:flutter/material.dart';

class SuraContentItem extends StatelessWidget
{
  String verse;
  int index;

  SuraContentItem({required this.verse, required this.index});

  @override
  Widget build(BuildContext context)
  {
    return Text(
        "$verse (${index + 1})",
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400
        ),
    );
  }
}
