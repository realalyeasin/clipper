import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:skeletons/skeletons.dart';

import '../controllers/skeleton_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  SkeletonController skeletonController = Get.put(SkeletonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(163, 225, 245, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Wavy Clipper"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.lightGreen,
                height: 180,
              ),
            ),
          ),
          Opacity(
            opacity: 0.9,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.lightGreen,
                height: 168,
              ),
            ),
          ),
          Obx(()=> skeletonController.isLoading.value == true ? const Positioned(child: CustomSkeleton()) : Center(child: Text("Loading Completed"),) )
        ],
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.text_increase_rounded), onPressed: (){skeletonController.changeState();},),
    );
  }
}

class CustomSkeleton extends StatelessWidget {
  const CustomSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (Builder, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SkeletonItem(
              child: Column(
                children: [
                  Row(
                    children: [
                      const SkeletonAvatar(),
                      const SizedBox(width: 15,),
                      Expanded(child: Column(
                        children: const [
                          SkeletonLine(style: SkeletonLineStyle(randomLength: true) ,),
                          SizedBox(height: 10,),
                          SkeletonLine(style: SkeletonLineStyle(randomLength: true),),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.toString());
    var path = Path();
    path.lineTo(0, size.height);

    var firstStart = Offset(size.width / 30, size.height);
    var firstEnd = Offset(size.width / 3, size.height - 40);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.9), size.height - 100);
    var secondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
