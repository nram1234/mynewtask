import 'package:flutter/material.dart';

import '../../utility/all_padding.dart';
import '../../utility/all_text_style.dart';
import '../models/catModel.dart';

class ItemListCat extends StatelessWidget {

  CatModel cat;

  ItemListCat({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AllPadding.p8),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: cat.color),
        ),Text(cat.lap,style: mediumTextStyle(),)
      ]),
    );
  }
}
