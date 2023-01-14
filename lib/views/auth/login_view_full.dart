import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/utils/ui/constants.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controllers/choose_language_controller.dart';
import '../../controllers/login_controller.dart';

class LoginViewFull extends StatelessWidget {
  const LoginViewFull({super.key});

  @override
  Widget build(BuildContext context) {
    final languageKeys = Get.find<LanguageController>().languageKeys.data!;

    return GetBuilder<LoginController>(
        init: Get.put(LoginController()),
        builder: (loginController) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -200,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 700,
                    width: 700,
                    decoration: BoxDecoration(
                      color: AppStyles.mainColor,
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: deviceWidth(context) - 80,
                    height: (deviceHeight(context) / 2) + 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 1,
                            spreadRadius: 3,
                            offset: Offset(0, 1))
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/logo2.png",
                        ),
                        const SizedBox(height: 10),
                        Text(
                          translateKey(languageKeys.welcomeToGpitcoText!),
                          style: AppStyles.bodyBoldL,
                        ),
                        const SizedBox(height: 50),
                        Container(
                          child: Column(
                            children: [
                              TextField(
                                controller: loginController.userNameController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    filled: true,
                                    fillColor: AppStyles.backgroundColor,
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: AppStyles.selectionColor,
                                    ),
                                    label: Text(
                                      translateKey(
                                        languageKeys.userNameText!,
                                      ),
                                      style: AppStyles.bodyBoldL,
                                    )),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              TextField(
                                controller: loginController.passwordController,
                                obscureText: loginController.passvisiblity,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    filled: true,
                                    fillColor: AppStyles.backgroundColor,
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.lock),
                                      color: AppStyles.selectionColor,
                                      onPressed: () => loginController
                                          .changePassVisibility(),
                                    ),
                                    label: Text(
                                      translateKey(languageKeys.passwordText!),
                                      style: AppStyles.bodyBoldL,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () => loginController.signIn(),
                          minWidth: double.infinity,
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55)),
                          color: AppStyles.mainColor,
                          child: Text(
                            translateKey(languageKeys.confirmText!),
                            style: AppStyles.bodyBoldL
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 70,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        translateKey(languageKeys.quConfirmAccountText!),
                        style: AppStyles.bodyMediumL.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        translateKey(languageKeys.registerText!),
                        style: AppStyles.bodyBoldL.copyWith(
                          color: AppStyles.primaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
