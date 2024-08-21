import 'package:flutter/material.dart';
import 'package:islami_app/ui/settings_provider.dart';
import 'package:provider/provider.dart';

import 'selected_item.dart';
import 'unselected_item.dart';

class ModeSheet extends StatelessWidget
{
  const ModeSheet({super.key});

  @override
  Widget build(BuildContext context)
  {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Container(
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(value: provider.themeMode == ThemeMode.light
              ? "Light"
              : "Dark"
          ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                provider.changeThemeMode(provider.themeMode == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light
                );
              },
              child: UnselectedItem(value: provider.themeMode == ThemeMode.light
                  ? "Dark"
                  : "Light"
              )
          )
        ],
      ),
    );;
  }
}
