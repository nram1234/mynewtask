
import 'package:flutter/material.dart';
import 'package:mynewtask/utility/all_padding.dart';
import 'package:mynewtask/utility/all_text_style.dart';

import '../../utility/app_colors.dart';
import '../models/deals_of_day.dart';

class DealsOfDayItemList extends StatelessWidget {
  final DealsOfDayModel dayModel;
  Size size;

  DealsOfDayItemList({required this.dayModel, required this.size,required this.onClick});
VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AllPadding.p8),
      height: 150,
      width: size.width * .8,
      child: IntrinsicHeight(
        child: Row(children: [
          Stack(
            children: [
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: dayModel.color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
           top: -2,left: -2,
                child: GestureDetector(onTap:onClick ,
                  child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        dayModel.favorite
                            ? Icons.favorite
                            : Icons.favorite_outline_outlined,
                    color:   dayModel.favorite
                        ? Colors.red:Colors.grey,  )),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dayModel.title,
                style: catTextStyle(),
              ),
              Text(
                "Pieces ${dayModel.pices}",
                style: norTextStyle(),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 15),
                  Text(
                    dayModel.time,
                    style: norTextStyle(),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$ ${dayModel.price_after_discount}",
                    style: priceTextStyle(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "\$ ${dayModel.price_before_discount}",
                    style: lineThroughTextStyle(),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
