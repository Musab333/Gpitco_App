import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/choose_language_controller.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/auth/login_view.dart';
import 'package:gpitco/views/home/home_view.dart';

import '../../localization/language.dart';
import '../../localization/translater.dart';
import '../onboarding/onboarding_view.dart';

class LanguagesView extends StatelessWidget {
  const LanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final localCode = Get
        .locale!.languageCode; // Localizations.localeOf(context).languageCode;

    return GetBuilder<LanguageController>(
        init: Get.put(LanguageController()),
        builder: (languageController) {
          final langaugeKeys = languageController.languageKeys!.data;
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translateKey(
                            langaugeKeys!.languageSelect!,
                          ),
                          // "إختر اللغة",
                          style: AppStyles.bodyBoldL
                              .copyWith(color: Color(0xff999999)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            languageController.changeLanguage(
                                Language(2, "عربي", '🇸🇦', "ar"), context);
                          },
                          color: localCode == "ar"
                              ? AppStyles.selectionColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          child: Text(
                            "العربية",
                            style: AppStyles.bodyBoldL.copyWith(
                              color: AppStyles.mainColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            languageController.changeLanguage(
                                Language(1, "English", '🇺🇸', "en"), context);
                          },
                          color: localCode == "en"
                              ? AppStyles.selectionColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          height: 60,
                          child: Text(
                            "English",
                            style: AppStyles.bodyBoldL.copyWith(
                              color: AppStyles.mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      languageController.setisFirsTime();
                      // Future.delayed(Duration.zero).then(
                      //   (_) => Get.off(() {
                      //     const IntroductionAnimationScreen();
                      //   }),
                      // );

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) =>
                              const IntroductionAnimationScreen())));
                    },
                    minWidth: double.infinity,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(55)),
                    color: AppStyles.mainColor,
                    child: Text(
                      translateKey(langaugeKeys.getStarted!),
                      style: AppStyles.bodyBoldL.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
