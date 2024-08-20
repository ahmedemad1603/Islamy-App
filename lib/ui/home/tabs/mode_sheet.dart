import 'package:flutter/material.dart';

import 'selected_item.dart';
import 'unselected_item.dart';

class ModeSheet extends StatelessWidget
{
  const ModeSheet({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(value: "Light"),
          SizedBox(height: 20,),
          UnselectedItem(value: "Dark")
        ],
      ),
    );;
  }
}
