import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynewtask/utility/all_padding.dart';

import '../../home/models/deals_of_day.dart';
import '../../utility/all_text_style.dart';
import '../cart_controller.dart';

class ItemList extends StatelessWidget {
  DealsOfDayModel dayModel;

  ItemList({required this.dayModel});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<CartController>(id: dayModel.id.toString(),builder: (logic) {
      return IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(color: dayModel.color),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    dayModel.title,
                    style: catTextStyle(),
                  ),
                  Text(
                    "Pieces ${dayModel.pices}",
                    style: norTextStyle(),
                  ),
                  Text(
                    "\$ ${logic.getTotalPrice(dayModel)}",
                    style: priceBigTextTextStyle(),
                  ),
                ],
              ),
            ),
            InkWell(onTap: () {
              logic.removeQnItem(dayModel);
            },
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent.withOpacity(.5)),
                  child: const Icon(Icons.remove, color: Colors.blueAccent)),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: AllPadding.p16, right: AllPadding.p16),
              child: Text(dayModel.qun.toString(), style: mediumTextStyle()),
            ),
            InkWell(onTap: () {
              logic.addQnItem(dayModel);
            },
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent.withOpacity(.5)),
                  child:   const Icon(Icons.add, color: Colors.blueAccent)),
            ),
          ],
        ),
      );
    });
  }
}
