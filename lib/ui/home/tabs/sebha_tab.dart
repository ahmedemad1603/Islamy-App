import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget
{
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
{
  int counter = 0;
  double angle = 0;
  int index = 0;
  List<String> azkar = [
    "سبحان الله",
    "الله أكبر",
    "الحمد لله",
    "لا حول ولا قوة إلا بالله",
    "سبحان الله و بحمده",
    "لا اله إلا الله",
    "اللهم صلي على نبينا محمد"
  ];

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 30,),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/sebha_head.png"),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                    onTap: (){
                      onPress();
                    },
                    child: Image.asset("assets/images/sebha_body.png")
                ),
              ),
            ),
          ],
        ),
        Text("عدد التسبيحات",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 22,),
        Center(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text("$counter", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400
            ),),
          ),
        ),
        SizedBox(height: 22,),
        Center(
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text("${azkar[index]}", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),),
          ),
        ),

      ],
    );
  }

  onPress(){
    counter++;
    if(counter % 33 == 0)
      {
        index++;
        counter++;
        counter = 0;
      }
    if(index == azkar.length)
      {
        index = 0;
      }
    angle += 360/4;
    setState(() {

    });
  }
}
