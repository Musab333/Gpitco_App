import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/utils/ui/app_styles.dart';

import '../../controllers/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: Get.put(SplashController()),
        builder: (splashController) {
          return Scaffold(
            backgroundColor: AppStyles.mainColor,
            floatingActionButton: splashController.loader
                ? const Center(
                    child: CircularProgressIndicator(
                    strokeWidth: 3,
                  ))
                : const SizedBox(),
            body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/images/screen.png",
                ),
                fit: BoxFit.fill,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        // height: 160,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
