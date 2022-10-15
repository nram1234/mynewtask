import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';
import 'controller/home_controller.dart';

class HomeSCR extends GetView<HomeController> {
  const HomeSCR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (logic) {
      return SafeArea(
        child: Scaffold(
          body: logic.currentScreen,
          bottomNavigationBar: BottomAppBar(//color: Colors.blue,
            //  shape: CircularNotchedRectangle(),
              notchMargin: 0,
              elevation: 0,
              child: Row(
                children: [
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(0);
                  }, icon: Icon(Icons.home_filled)),
                  Spacer(flex: 1,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(1);
                  }, icon: Icon(Icons.notifications_none_outlined)),
                  Spacer(flex: 3,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(2);
                  }, icon: Icon(Icons.favorite)),
                  Spacer(flex: 1,),
                  IconButton(onPressed: () {
                    controller.updateCurrentScreen(3);
                  }, icon: Icon(Icons.wallet))
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
