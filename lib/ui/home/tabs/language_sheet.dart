import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/selected_item.dart';
import 'package:islami_app/ui/home/tabs/unselected_item.dart';

class LanguageSheet extends StatelessWidget
{
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(value: "English"),
          SizedBox(height: 20,),
          UnselectedItem(value: "العربية")
        ],
      ),
    );
  }
}
