import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:gpitco/controllers/splash_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../localization/language.dart';
import '../localization/language_constants.dart';
import '../main.dart';
import 'home_controller.dart';

class LanguageController extends GetxController {
  final languageKeys = Get.find<SplashController>().strings;

  void changeLanguage(Language lang, BuildContext context) async {
    print("change lange");

    Future.delayed(Duration.zero).then((_) async {
      Locale temp = await setLocale(lang.languageCode);

      // MyApp.setLocale(context, temp);
      // change `easy_localization` locale
      if (kDebugMode) {
        print(" this is the temp local :::${temp.languageCode}");
      }
      Get.updateLocale(temp);
      // update();
    });
  }
  // showing the language screen one time

  setisFirsTime() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("languageScreen", "true");
  }

  getisFristTime() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getString("languageScreen") != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
