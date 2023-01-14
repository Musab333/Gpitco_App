import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../models/languages.dart';

String translateKey(AppNameText text) {
  // final localcode = Localizations.localeOf(context).languageCode;
  final localcode = Get.locale!.languageCode;

  if (localcode == "ar") {
    return text.ar!;
  } else {
    return text.en!;
  }
}
