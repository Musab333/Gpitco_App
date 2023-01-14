import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:gpitco/models/appdata.dart';
import 'package:http/http.dart' as http;

import '../utils/helpers/url.dart';
import 'login_controller.dart';

class HomeCotnroller extends GetxController {
  bool loading = false;
  changeloader() {
    loading = !loading;
    update();
  }

  // final token = Get.find<LoginController>().user!.data!.token!;
  AppData? appdata;

  Future<void> getAppdata() async {
    Get.lazyPut(() => LoginController());

    // final token = Get.find<LoginController>().user!.data!.token!;
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json",
        // 'Authorization': 'Bearer $token'
      };
      var urlCalling = Url.appdata;
      var url = Uri.parse(urlCalling);
      if (kDebugMode) {
        print("reatching :: $urlCalling");
      }
      changeloader();
      final response = await http.get(url, headers: headers);
      if (kDebugMode) {
        // print("requested Token :: $token");
        print("the response ${response.body}");
      }

      if (response.statusCode == 200) {
        appdata = AppData.fromJson(json.decode(response.body));
        if (kDebugMode) {
          print("this is the final body of appdata ${appdata!.status}");
        }
        update();
      }
    } catch (e) {
      if (kDebugMode) {
        print("the error $e");
      }
      // Fluttertoast.showToast(
      //     msg: "Unknown Error Occred",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
    changeloader();
  }
// brach menu

  @override
  void onInit() {
    getAppdata();
  }
}
