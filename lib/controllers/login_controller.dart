import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:gpitco/views/auth/login_view.dart';
// import 'package:gpitco/models/company.dart';
import 'package:gpitco/views/auth/login_view_full.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../models/company_user.dart';
import '../utils/helpers/url.dart';

class LoginController extends GetxController {
  // TextEditingController comapyNumberController = TextEditingController();

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isCompelte = false;
  var companyNumber;
  var userName;
  var passowrd;
  bool passvisiblity = true;
  changeIscomplete(value) {
    isCompelte = value;
  }

  changeCompnayNumber(v) {
    companyNumber = v;
    update();
  }

  changeUserName(v) {
    userName = v;
    update();
  }

  changePassword(v) {
    passowrd = v;
    update();
  }

  changePassVisibility() {
    passvisiblity = !passvisiblity;
    update();
  }

  Company? company;
  CompanyUser? user;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> companyCheck() async {
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json"
      };
      var url = Uri.parse(Url.checkCompany);
      if (kDebugMode) {
        print("reatching :: ${Url.checkCompany}");
        print("this is the contorller number :: $companyNumber");
      }
      final data = {"company_number": companyNumber};
      EasyLoading.show();

      final response =
          await http.post(url, body: json.encode(data), headers: headers);
      EasyLoading.dismiss();

      if (kDebugMode) {
        print("the response ${response.body}");
      }

      if (response.statusCode == 200) {
        company = Company.fromJson(json.decode(response.body));
        update();
        Get.offAll(() => const LoginViewFull());
      } else {
        EasyLoading.dismiss();
        Fluttertoast.showToast(
            msg: jsonDecode(response.body)["message"] ?? "Unknown Error Occred",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      if (kDebugMode) {
        print("the error $e");
      }
      Fluttertoast.showToast(
          msg: "Unknown Error Occred",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  // sigining in
  Future<void> signIn() async {
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json"
      };
      var url = Uri.parse(Url.login);
      if (kDebugMode) {
        print("reatching :: ${Url.checkCompany}");
      }
      final data = {
        "company_number": companyNumber,
        "username": userNameController.text,
        "password": passwordController.text
      };
      EasyLoading.show();

      final response =
          await http.post(url, body: json.encode(data), headers: headers);
      EasyLoading.dismiss();

      if (kDebugMode) {
        print("the response ${response.body}");
      }

      if (response.statusCode == 200) {
        user = CompanyUser.fromJson(json.decode(response.body));
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("user", response.body);
        if (kDebugMode) {
          print("the response ${response.body}");
        }
        update();

        Get.off(() => HomeView(), arguments: user);
        // comapyNumberController.clear();
        // userNameController.clear();
        // passwordController.clear();

        // Get.offAll(() => const HomeView());
      } else {
        Fluttertoast.showToast(
            msg: jsonDecode(response.body)["message"] ?? "Unknown Error Occred",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      if (kDebugMode) {
        print("the error :: $e");
      }
      Fluttertoast.showToast(
          msg: "Unknown Error Occred",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future<bool> tryAutoSignn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("user")) {
      user = CompanyUser.fromJson(json.decode(prefs.getString("user")!));

      if (kDebugMode) {
        print("${user!.data!.user!.username!} this is the user");
      }
      update();
      return true;
    } else {
      return false;
    }
  }

  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("user");
    Get.offAll(() => const LoginView());
  }
}
