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
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [  Padding(
        padding: const EdgeInsets.all(AllPadding.p8),
        child: Text("data"),
      ),
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
