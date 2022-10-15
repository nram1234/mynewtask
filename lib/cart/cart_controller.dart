import 'package:get/get.dart';

import '../home/models/deals_of_day.dart';

class CartController extends GetxController{
  List<DealsOfDayModel>cartItem=[];



  addcartItem(DealsOfDayModel item){

    item.qun=1;


    cartItem.add(item);
    update();
  }
 removeCartItem(DealsOfDayModel item){

    item.qun=0;


    cartItem.remove(item);
    update();
  }
  addQnItem(DealsOfDayModel item){

    item.qun++;



    update([item.id.toString()]);
  }
  removeQnItem(DealsOfDayModel item){

    item.qun--;

if(item.qun==0){
  print("pppppppppppppppppp");
  removeCartItem(item);
  update();
}

    update([item.id.toString()]);
  }



 double getTotalPrice(DealsOfDayModel item){


    return  item.price_after_discount*item.qun;
 }


}