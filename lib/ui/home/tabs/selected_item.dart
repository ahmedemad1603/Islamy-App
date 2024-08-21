import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget
{
  String value;

  SelectedItem({super.key, required this.value});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(value, style: Theme.of(context).textTheme.titleLarge),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          size: 30,
        )
      ],
    );
  }
}
