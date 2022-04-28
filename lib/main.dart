import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Clipper()
    );
  }
}

class Clipper extends StatelessWidget {
  const Clipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(163, 225, 245, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wavy Clipper"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Stack(
          children: [
            Opacity(opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.lightGreen,
                height: 180,
              ),
            ),),
            Opacity(opacity: 0.9,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.lightGreen,
                  height: 168,
                ),
              ),)
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    debugPrint(size.toString());
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width /30 , size.height);
    var firstEnd = Offset(size.width / 3, size.height-40);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width/3.9), size.height-100);
    var secondEnd = Offset(size.width, size.height-10);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

