import 'package:flutter/material.dart';
import 'package:islamic/home/quran_tab/sura_detail_name.dart';
import 'package:islamic/home_screen.dart';
import 'package:islamic/my_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute:HomeScreen.routeName ,
routes: {
HomeScreen.routeName : (context)=>HomeScreen(),
  SuraDetalsName.routeName:(context)=>SuraDetalsName(),
},
      theme:MyTheme.LightMode,

    );
  }
}
