import 'package:flutter/material.dart';

class SuraDetalsTheme extends StatelessWidget {
  static const String routeName = 'SuraDetalsTheme';
String contac;
int index;
SuraDetalsTheme({required this.contac,required this.index});
  @override
  Widget build(BuildContext context) {
    return Text
      ('$contac [${index+1}]' ,
      style:Theme.of(context).textTheme.titleSmall ,
    textAlign: TextAlign.center,
    );
  }
}
