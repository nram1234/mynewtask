import 'package:flutter/material.dart';

class DealsOfDayModel{
  int id;
bool  favorite ;
String  title;
 double price_before_discount;
  double price_after_discount;
int pices;
String time;
Color color;
int qun;
DealsOfDayModel(
      {this.favorite=false,required this.id,
    required  this.title,required this.pices,required this.time,required this.color,
        required    this.price_before_discount,
        required   this.price_after_discount,this.qun=0});
}