import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:gpitco/controllers/choose_language_controller.dart';
import 'package:gpitco/localization/language.dart';
import 'package:gpitco/utils/ui/app_styles.dart';

import '../../../localization/translater.dart';

class RelaxView extends StatelessWidget {
  final AnimationController animationController;

  const RelaxView({Key? key, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _firstHalfAnimation =
        Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.0,
          0.2,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final _secondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final _textAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final _imageAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-4, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    final _relaxAnimation =
        Tween<Offset>(begin: Offset(0, -2), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          0.0,
          0.2,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final languageKeys = Get.find<LanguageController>().languageKeys.data!;
    return SlideTransition(
      position: _firstHalfAnimation,
      child: SlideTransition(
        position: _secondHalfAnimation,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _imageAnimation,
                child: Container(
                  alignment: Alignment.center,
                  // constraints: BoxConstraints(maxWidth: 450, maxHeight: 450),
                  child: Image.asset(
                    'assets/images/Group1.png',
                    fit: BoxFit.contain,
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SlideTransition(
                position: _relaxAnimation,
                child: Text(
                  translateKey(
                    languageKeys.appNameText!,
                  ),
                  style:
                      AppStyles.heading2.copyWith(color: AppStyles.mainColor),
                ),
              ),
              SlideTransition(
                position: _textAnimation,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
                  child: Text(
                    translateKey(
                      languageKeys.setupScreenFristText!,
                    ),
                    textAlign: TextAlign.center,
                    style: AppStyles.heading4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
