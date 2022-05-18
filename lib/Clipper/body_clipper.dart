import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clipper extends StatelessWidget {
  const Clipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wavy Clipper"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,130),
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(child: IconButton(onPressed: (){},icon: Icon(Icons.home_filled,color: Colors.black,size: 38,),), top: 66,left: 16,),
              Positioned(child: IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.black,size: 38,),), top: 67,left: 108,),
              Positioned(child: GestureDetector(child: CustomPaint(painter: RPSCustomPainter2(),size: Size(55,55),),onTap: (){},), top: 60,left: 178.1,),
              Positioned(child: IconButton(onPressed: (){},icon: Icon(Icons.shopping_cart,color: Colors.black,size: 36,),), top: 67,right: 108,),
              Positioned(child: IconButton(onPressed: (){},icon: Icon(Icons.settings,color: Colors.black,size: 38,),), top: 66,right: 16,)

            ],
          )


      ],)
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.lightBlueAccent.shade200
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.2425000);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.8758625,size.height*0.5924000,size.width*0.7504125,size.height*0.5940500);
    path0.cubicTo(size.width*0.7374375,size.height*0.4561500,size.width*0.5873875,size.height*0.5020000,size.width*0.5629875,size.height*0.3464500);
    path0.cubicTo(size.width*0.5623000,size.height*0.4966500,size.width*0.5371125,size.height*0.6035000,size.width*0.5004500,size.height*0.6573000);
    path0.cubicTo(size.width*0.4631000,size.height*0.6052500,size.width*0.4376000,size.height*0.4937500,size.width*0.4371000,size.height*0.3344000);
    path0.cubicTo(size.width*0.4119750,size.height*0.4958000,size.width*0.2628625,size.height*0.4543500,size.width*0.2493750,size.height*0.6020000);
    path0.quadraticBezierTo(size.width*0.1256625,size.height*0.5990500,0,size.height*0.2425000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RPSCustomPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.2485500,size.height*0.2027500);
    path0.quadraticBezierTo(size.width*0.0523000,size.height*0.1052500,0,size.height*0.2500000);
    path0.quadraticBezierTo(0,size.height*0.3739125,0,size.height*0.7456500);
    path0.quadraticBezierTo(size.width*0.1535000,size.height*0.6039500,size.width*0.5014500,size.height*0.8528500);
    path0.quadraticBezierTo(size.width*0.8562000,size.height*0.5998500,size.width,size.height*0.7500000);
    path0.quadraticBezierTo(size.width,size.height*0.3750000,size.width,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.9477000,size.height*0.1044500,size.width*0.7529000,size.height*0.2012500);
    path0.quadraticBezierTo(size.width*0.5501000,size.height*0.1987500,size.width*0.5016000,size.height*0.1264500);
    path0.quadraticBezierTo(size.width*0.4537000,size.height*0.1962500,size.width*0.2485500,size.height*0.2027500);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}




