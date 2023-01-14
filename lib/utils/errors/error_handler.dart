import 'dart:convert';
import 'package:gpitco/utils/helpers/constant.dart';
import 'package:gpitco/utils/helpers/local_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ErrorHandler {
  //Handle Network Errors
  netWorkHandler(http.Response response,
      {BuildContext? context, showMessageFromBack = true}) {
    // print(response.request!.url);
    print(response.body);

    EasyLoading.dismiss();

    switch (response.statusCode) {
      // if the request is success return the response
      case 200:
        return response;
      case 201:
        return response;

      case 401:
        LocalStorage().removeData("user");
        LocalStorage().removeData("token");
        // globalController().checkLogin();
        return showMessage(
            "Unauthorized",
            jsonDecode(response.body)["message"].toString(),
            Icons.close,
            Colors.red.shade300);
      case 422:
        return formsValidation(jsonDecode(response.body)["errors"]);
      case 400:
        if (showMessageFromBack) {
          showMessage("Bad Request", jsonDecode(response.body)["message"],
              Icons.close, Colors.red.shade300);
        }
        return response;

      case 500:
        return showMessage("Server Error", jsonDecode(response.body)["message"],
            Icons.close, Colors.red.shade300);
      case 404:
        // Get.to(() => NotFoundView());
        break;
    }
  } //end of network handler

  formsValidation(Map<String, dynamic> errors) {
    errors.forEach((key, value) {
      showMessage(
          "error".tr(), value.toString(), Icons.close, Colors.red.shade300);
      return;
    });
  }
}
