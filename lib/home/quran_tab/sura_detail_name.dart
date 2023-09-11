import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/home/quran_tab/sura_detail_theme.dart';
import 'package:islamic/my_theme.dart';

class SuraDetalsName extends StatefulWidget {
  static const String routeName = "sura Detale name";

  @override
  State<SuraDetalsName> createState() => _SuraDetalsNameState();
}

class _SuraDetalsNameState extends State<SuraDetalsName> {
  List<String> vercec = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (vercec.isEmpty){
    LoadFile(args.index);}
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
                args.name,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge, //عشان استخدم الtheme /والي مكتوب قبلها عشان استخدمها في لايت ودارك
              ),
            ),
            body: vercec.length == 0
                ? Center(child: CircularProgressIndicator())
                :
            Container(
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: MyTheme.whitecolor,
),
margin: EdgeInsets.symmetric(
  horizontal:MediaQuery.of(context).size.width*0.03 ,
  vertical:MediaQuery.of(context).size.height*0.09
),

child: ListView.builder(
                      itemBuilder: (context, index) {
                        return SuraDetalsTheme(contac:vercec[index],index: index);
                      },
                      itemCount: vercec.length,
                    ),
            )),
      ],
    );
  }

  void LoadFile(int index) async {
    String contect =
        await rootBundle.loadString('assets/file/${index + 1}.txt');
    List<String> lins = contect.split('/n');
    vercec = lins;
    setState(() {});

  }
}

class SuraDetailsArgs {
  String name;
  int index;
  SuraDetailsArgs({required this.name, required this.index});
}
