import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radio_image.png'),
          Text(
            'إذاعة القرأن الكريم',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                color: MyTheme.primarylight,
                size: 50,
              ),
              Icon(
                Icons.play_arrow,
                color: MyTheme.primarylight,
                size: 70,
              ),
              Icon(
                Icons.skip_next,
                color: MyTheme.primarylight,
                size: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
