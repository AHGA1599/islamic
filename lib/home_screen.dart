import 'package:flutter/material.dart';
import 'package:islamic/home/hadeth_tab.dart';
import 'package:islamic/home/quran_tab/quran_tab.dart';
import 'package:islamic/home/radio_tab.dart';
import 'package:islamic/home/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_back.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'ISLAMI',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, //عشان استخدم الtheme /والي مكتوب قبلها عشان استخدمها في لايت ودارك
            ),
          ),

          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index){
                selectedindex=index;
                setState(() {

                });
              },
              items: [
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),),
    label: 'Quran'
    ),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),
    label: 'Hadeth'
    ),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),
    label: 'Tasbeh'
    ),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),),
    label: 'Radio'

    )
              ],
            ),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }
  List<Widget>tabs=[
QuranTab(),HadethTab(),TasbehTab(),RadioTab(),
  ];
}
