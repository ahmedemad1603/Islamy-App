import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/selected_item.dart';
import 'package:islami_app/ui/home/tabs/unselected_item.dart';
import 'package:islami_app/ui/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatelessWidget
{
  const LanguageSheet({super.key});

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
          SelectedItem(value: provider.selectedLanguage == "ar"
              ? "العربية"
              : "English"
          ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){
                provider.changeSelectedLanguage(
                  provider.selectedLanguage == "en"? "ar" : "en"
                );
              },
              child: UnselectedItem(value: provider.selectedLanguage == "en"
                  ? "العربية"
                  : "English"
              )
          )
        ],
      ),
    );
  }
}
