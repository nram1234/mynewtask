import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynewtask/utility/app_colors.dart';

import '../../utility/all_padding.dart';
import '../../utility/all_text_style.dart';
import '../controller/home_controller.dart';
import '../widgets/custom_shap.dart';
import '../widgets/deals_of_day_item_list.dart';
import '../widgets/info_box.dart';
import '../widgets/item_list_cat.dart';

class Tap1 extends GetView<HomeController> {
  const Tap1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(AllPadding.p8),
            child: Row(
              children: [
                Expanded(
                  child: InfoBox(
                      lap: "Home Address",
                      text1: "Mustafa St No:2",
                      text2: "Street x12"),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InfoBox(
                      lap: "Home Address",
                      text1: "Mustafa St No:2",
                      text2: "Street x12"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AllPadding.p8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore by Category",
                  style: catTextStyle(),
                ),
                Text(
                  "See All (${controller.cat.length})",
                  style: norTextStyle(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.cat.length,
                itemBuilder: (context, pos) {
                  return ItemListCat(
                    cat: controller.cat[pos],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(AllPadding.p8),
            child: Text(
              "Deals of the day",
              style: catTextStyle(),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.deals.length,
                itemBuilder: (context, pos) {
                  return GetBuilder<HomeController>(
                      id: controller.deals[pos].id.toString(),
                      builder: (logic) {
                        return DealsOfDayItemList(
                          onClick: () {
                            logic.setfave(controller.deals[pos]);
                          },
                          dayModel: controller.deals[pos],
                          size: size,
                        );
                      });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(AllPadding.p8),
            child: Container(
              padding: EdgeInsets.all(AllPadding.p8),
              height: 120,
              decoration: BoxDecoration(
                color: ColorApp.contColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IntrinsicHeight(
                  child: Row(children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.botoomDel.title,
                            style: catTextStyle(),
                          ),
                          Text(
                            controller.botoomDel.time,
                            style: norTextStyle(),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined, size: 15),
                              Text(
                                controller.botoomDel.pices.toString(),
                                style: norTextStyle(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                controller.botoomDel.price_after_discount
                                    .toString(),
                                style: norTextStyle(),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                controller.botoomDel.price_before_discount
                                    .toString(),
                                style: norTextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
