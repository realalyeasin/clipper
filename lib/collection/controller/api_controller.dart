import 'dart:convert';

import 'package:custom_clipper/collection/model/api_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController{
  String accessKey = "05lrT_wd0i_6O65EYpvVrr8VSPDOUxhb07tsqHEA5vI";
  String secretKey = "YtZUhNWwWxrJSqo9wFggp6yKXAMYG8BkGwPnenkIdmU";

  var isDataLoadingDone = false.obs;
  var collections = <ApiModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadData();
  }

  Future<List<ApiModel>?> loadData() async {
    String url = "https://api.unsplash.com/photos/?client_id=" + accessKey;
    var response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      debugPrint(response.body);
      return apiModelFromJson(response.body);
    }
  }
}