import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/login_controller.dart';
import 'package:gpitco/models/languages.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:gpitco/views/onboarding/onboarding_view.dart';
import 'package:gpitco/views/splash/languages_view.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/static_languages.dart';
import '../utils/helpers/url.dart';
import '../views/auth/login_view.dart';
import 'choose_language_controller.dart';

class SplashController extends GetxController {
  // @override

  // final isLangScreen = Get.find<LanguageController>().getisFristTime();
  Languages strings = Languages.fromJson(StaticLanguages.json);
  bool loader = false;

  changeLoader() {
    loader = !loader;
    update();
  }

  Future<void> getLanguages() async {
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json",
      };
      var urlCalling = Url.languges;
      var url = Uri.parse(urlCalling);
      if (kDebugMode) {
        print("reatching :: $urlCalling");
      }
      changeLoader();
      final response = await http.get(url, headers: headers);
      if (kDebugMode) {
        print("the response ${response.body}");
      }
      changeLoader();
      if (response.statusCode == 200) {
        strings = Languages.fromJson(json.decode(response.body));

        update();
      }
    } catch (e) {
      strings = Languages.fromJson(StaticLanguages.json);
      update();
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

//checking language view appearance

  getisFristTime() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString("languageScreen") != null) {
      return true;
    } else {
      return false;
    }
  }

//checking intro Skip
  getisFristTimeIntro() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString("intoSkip") != null) {
      return true;
    } else {
      return false;
    }
  }
// checking autologin

  void onInit() async {
    var isFirstTime = await getisFristTime();
    var isIntoSkip = await getisFristTimeIntro();
    bool loggedin = await Get.find<LoginController>().tryAutoSignn();
    await Future.delayed(Duration(seconds: 3));

    Get.offAll(() => !isFirstTime
        ? const LanguagesView()
        : isIntoSkip
            ? loggedin
                ? HomeView()
                : const LoginView()
            : const IntroductionAnimationScreen());
    super.onInit();
  }
}
