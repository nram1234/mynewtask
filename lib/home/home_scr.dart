import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynewtask/home/widgets/custom_shap.dart';

import '../utility/all_padding.dart';
import '../utility/app_colors.dart';
import 'controller/home_controller.dart';

class HomeSCR extends GetView<HomeController> {
  const HomeSCR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (logic) {
      return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding:   EdgeInsets.all(AllPadding.p8),
                child: Row(children: [
                  CustomPaint(

                      child: Container(
                        width: 130,
                        height: 40,
                        child: Row(children: [
                          Icon(Icons.location_on_outlined, color: Colors.white),
                          SizedBox(width: 4,),
                          Text("Oxford st", style:TextStyle(color: Colors.white),)
                        ]),
                      ),
                      painter: RPSCustomPainter())
                ]),
              ),


              Expanded(child: logic.currentScreen),
            ],
          ),
          bottomNavigationBar: BottomAppBar(//color: Colors.blue,
            //  shape: CircularNotchedRectangle(),
              notchMargin: 0,
              elevation: 0,
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(0);
                  }, icon: Icon(Icons.home_filled,color: logic.index==0?Colors.red:Colors.grey,)),
                  Spacer(flex: 1,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(1);
                  }, icon: Icon(Icons.notifications_none_outlined,color: logic.index==1?Colors.red:Colors.grey,)),
                  Spacer(flex: 3,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(2);
                  }, icon: Icon(Icons.favorite,color: logic.index==2?Colors.red:Colors.grey,)),
                  Spacer(flex: 1,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(3);
                  }, icon: Icon(Icons.wallet,color: logic.index==3?Colors.red:Colors.grey,))
                ],
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            elevation: 0,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        ),
      );
    });
  }
}

//
// BottomNavigationBar(
//
// showSelectedLabels: false,
// showUnselectedLabels: false,
// onTap: logic.updateCurrentScreen,
// selectedItemColor: ColorApp.primaryColor,
// currentIndex: logic.index,
// unselectedItemColor: Colors.grey,
// items: [
// BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
// BottomNavigationBarItem(icon: Icon(Icons.explore), label: ""),
// BottomNavigationBarItem(
// icon: Icon(Icons.account_balance_wallet), label: ""),
// BottomNavigationBarItem(
// icon: Icon(CupertinoIcons.person), label: "")
// ],
// )
