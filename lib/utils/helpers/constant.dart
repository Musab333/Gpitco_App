import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

showMessage(String? title, String? message, IconData? icon, Color? color) {
  EasyLoading.showToast(message!,
      toastPosition: EasyLoadingToastPosition.bottom);
}
