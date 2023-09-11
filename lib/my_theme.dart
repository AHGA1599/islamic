import 'package:flutter/material.dart';

class MyTheme {
  // colord / light theme / dark
  static Color blackcolor = Color(0xff242424);
  static Color primarylight = Color(0xffB7935F);
  static Color whitecolor = Colors.white;

  static ThemeData LightMode = ThemeData(
      primaryColor: primarylight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
           color:Colors.black,
        )
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: blackcolor,
          ),
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: blackcolor,
          ),
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: blackcolor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackcolor,
          unselectedItemColor: whitecolor,
          showSelectedLabels: true,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            size: 30,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 15,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
          )),
  iconTheme: IconThemeData(
    color: primarylight,
    size: 20,
  )
  );
}
