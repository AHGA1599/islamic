import 'package:flutter/material.dart';
import 'package:islamic/home/quran_tab/sura_detail_name.dart';

class ItemSuraName extends StatelessWidget {
String name;
int index;
ItemSuraName({required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        // navigate
Navigator.of(context).pushNamed(SuraDetalsName.routeName,
arguments:SuraDetailsArgs(name: name, index: index),

);
      },
      child: Text(name,
      style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }

}




