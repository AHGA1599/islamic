import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  String name = 'SUBHAN ALAH';
  double turns = 0.0;
  double turns1 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedRotation(
            turns: turns1,
            duration: Duration(seconds: 1),
            child: Image.asset('assets/images/head_sebha_logo.png'),
          ),

          AnimatedRotation(
            turns: turns,
            duration: Duration(seconds: 1),
            child: Image.asset('assets/images/body_sebha_logo.png'),
          ),
          Text(
            'Namber OF Tasbeh',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            width: 90,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyTheme.primarylight,
            ),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              counterTasbeh();

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: MyTheme.primarylight,
            ),
            child: Text('$name',
                style: TextStyle(
                  color: MyTheme.whitecolor,
                  fontSize: 25,
                )),
          )
        ],
      ),
    );
  }

  void counterTasbeh() {
    if (counter == 33 && name == 'SUBHAN ALAH') {
      counter = 0;
      turns=0.0;
      turns1=0.0;
      name = 'ALHMED ALAH';
    } else if (counter == 33 && name == 'ALHMED ALAH') {
      counter = 0;
      turns=0.0;
      turns1=0.0;
      name = 'ALAH AKBER';
    } else if (counter == 33 && name == 'ALAH AKBER') {
      counter = 0;
      turns=0.0;
      turns1=0.0;
      name = 'SUBHAN ALAH';
    } else {
      counter++;
      turns+=1/20;
      turns1+=1/20;
    }
    setState(() {});
  }
}
