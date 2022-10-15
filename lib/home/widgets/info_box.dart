import 'package:flutter/material.dart';
import 'package:mynewtask/utility/all_text_style.dart';

import '../../utility/app_colors.dart';

class InfoBox extends StatelessWidget {
//final Size size;
  final String lap;
  final String text1;
  final String text2;

  InfoBox({
    required this.lap,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 70 //,width: size.width*.4,
      ,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorApp.BorderColore),
 ),
      child: IntrinsicHeight(
        child: Row(children: [
          Container(

            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),SizedBox(width: 8,),
          Column(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lap,
                style:catTextStyle(),
              ),
              Text(
                text1,
                style:norTextStyle(),
              ),   Text(
                lap,
                style:norTextStyle(),
              ),],
          )
        ]),
      ),
    );
  }
}
