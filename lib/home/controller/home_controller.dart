import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/cart_controller.dart';
import '../models/catModel.dart';
import '../models/deals_of_day.dart';
import '../taps/tap1.dart';
import '../taps/tap2.dart';
import '../taps/tap3.dart';
import '../taps/tap4.dart';

class HomeController extends GetxController {
  DealsOfDayModel botoomDel = DealsOfDayModel(id: 500,
      color: Colors.deepOrangeAccent,
      pices: 55,
      price_after_discount: 55,
      price_before_discount: 100,
      time: "44444",
      title: 'ijui');

  int index = 0;

  List<DealsOfDayModel> deals = [];
  List<CatModel> cat = [];
  List<Color> colors = [
    Colors.deepOrangeAccent,
    Colors.cyan,
    Colors.amberAccent,
    Colors.purple,
    Colors.lightGreen,
    Colors.deepPurple,
  ];

  late Widget currentScreen;

  List<Widget> screens = [Tap1(), Tap2(), Tap3(), Tap4()];

  updateCurrentScreen(int index) {
    this.index = index;
    currentScreen = screens[index];
    update();
  }

  @override
  void onInit() {
    super.onInit();
    for (int i = 0; i < 100; i++) {
      cat.add(
          CatModel(color: colors[i % colors.length], lap: "item no ${i + 1}"));

      deals.add(DealsOfDayModel(id: i,
          title: "deal no ${i + 1}",
          color: colors[i % colors.length],
          pices: i,
          time: "15 m",
          price_before_discount: i+1,
          price_after_discount: (i+1)/2));
    }
    currentScreen = screens[0];
  }




  setfave(DealsOfDayModel dayModel){
    dayModel.favorite=   !dayModel.favorite;
    if(dayModel.favorite){

      Get.find<CartController>().addcartItem(dayModel) ;
    }else{
      Get.find<CartController>().removeCartItem(dayModel) ;
    }

    update([dayModel.id.toString()]);



  }
}
