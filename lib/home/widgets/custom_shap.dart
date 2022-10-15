import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.2,size.height*0);
    path0.quadraticBezierTo(0,0,0,size.height*0.5);
    path0.quadraticBezierTo(size.width*0,size.height*1,size.width*0.2,size.height);
    path0.lineTo(size.width*0.8,size.height);

    path0.quadraticBezierTo(size.width,size.height,size.width,size.height*.85);
    path0.cubicTo(size.width,size.height*0.8,size.width,size.height*0.8,size.width*0.9759583,size.height*0.6859571);
    path0.quadraticBezierTo(size.width*0.9,size.height*0.4,size.width*0.65,0);
    path0.lineTo(size.width*0.2,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
