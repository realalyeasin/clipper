import 'package:get/get.dart';

class SkeletonController extends GetxController{
  var isLoading = false.obs;
  void changeState(){
    isLoading.value = !isLoading.value;
  }
}