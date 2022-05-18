import 'dart:ui';

import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.2425000);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.8754500,size.height*0.5008500,size.width*0.7500000,size.height*0.5025000);
    path0.cubicTo(size.width*0.7241125,size.height*0.3996000,size.width*0.6011750,size.height*0.4979000,size.width*0.5627375,size.height*0.3921500);
    path0.quadraticBezierTo(size.width*0.5414750,size.height*0.4861500,size.width*0.5000000,size.height*0.5000000);
    path0.quadraticBezierTo(size.width*0.4542500,size.height*0.4839000,size.width*0.4371000,size.height*0.4003000);
    path0.cubicTo(size.width*0.3992375,size.height*0.4950500,size.width*0.2754500,size.height*0.4082000,size.width*0.2493750,size.height*0.5000000);
    path0.quadraticBezierTo(size.width*0.1256625,size.height*0.4970500,0,size.height*0.2425000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
