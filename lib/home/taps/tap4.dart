import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/cart_controller.dart';
import '../../cart/widgets/itemlist.dart';
import '../../utility/all_padding.dart';
import '../widgets/custom_shap.dart';

class Tap4 extends GetView<CartController> {
  const Tap4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Padding(
        padding: EdgeInsets.all(AllPadding.p8),
        child: Row(children: [
          CustomPaint(

              child: Container(
                width: 130,
                height: 40,
                child: Row(children: [
                  Icon(Icons.location_on_outlined, color: Colors.white),
                  SizedBox(width: 4,),
                  Text("Oxford st", style: TextStyle(color: Colors.white),)
                ]),
              ),
              painter: RPSCustomPainter())
        ]),
      ), Text("data"),
        GetBuilder<CartController>(builder: (logic) {
          return Expanded(
            child: ListView.builder(itemCount: controller.cartItem.length,
                itemBuilder: (context, pos) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemList(dayModel: controller.cartItem[pos],),
                  );
                }),
          );
        }),
      ],
    );
  }
}
