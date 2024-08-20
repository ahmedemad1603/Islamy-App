import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/language_sheet.dart';
import 'package:islami_app/ui/home/tabs/mode_sheet.dart';

class SettingsTab extends StatefulWidget
{
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text("Language", style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 17,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      width: 3
                  )
                ),
                width: double.infinity,
                padding: EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("English", style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w400
                    ),),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
            ),
          ),
          SizedBox(height: 30,),
          Text("Mode", style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 17,),
          InkWell(
            onTap: (){
              showModeBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      width: 3
                  )
              ),
              width: double.infinity,
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Light", style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w400
                  ),),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageBottomSheet()
  {
    showModalBottomSheet(context: context, builder: (context)=> LanguageSheet());
  }

  showModeBottomSheet()
  {
    showModalBottomSheet(context: context, builder: (context)=> ModeSheet());
  }
}
