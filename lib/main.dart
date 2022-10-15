import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynewtask/utility/app_colors.dart';

import 'cart/binding/Home_binding.dart';
import 'home/binding/Home_binding.dart';
import 'home/home_scr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue, textTheme: Theme.of(context).textTheme.apply(
        fontFamily:
        GoogleFonts.poppins().fontFamily,
        bodyColor: ColorApp.FontColorBlack,

      ),
      ),

      initialRoute: "/"
      ,getPages: [


      GetPage(name: "/", page: () =>
          HomeSCR(),
          bindings: [HomeBinding(),
            CartBinding()])



      ,
      // GetPage(name: "/HolidayRequest", page: () =>
      //     HolidayRequestScr(),
      //     binding: HolidayRequestBinding())

    ], );
  }
}
