import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentTap = 0;

  onTapChanged(val) {
    currentTap = val;
    update();
  }
}
