import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/utils/ui/constants.dart';
import 'package:gpitco/views/auth/login_view_full.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controllers/choose_language_controller.dart';
import '../../controllers/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _iscomleted = false;
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
                          translateKey(languageKeys.companyNumberText!),
                          style: AppStyles.bodyBoldL,
                        ),
                        const SizedBox(height: 20),
                        Image.asset(
                          "assets/images/Group 751.png",
                          height: 120,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          width: 260,
                          height: 60,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: PinCodeTextField(
                              keyboardType: TextInputType.number,
                              textStyle: AppStyles.heading5
                                  .copyWith(color: Colors.white),
                              length: 6,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(10),
                                fieldHeight: 40,
                                fieldWidth: 40,
                                activeFillColor:
                                    AppStyles.mainColor.withOpacity(0.8),
                                inactiveFillColor:
                                    AppStyles.mainColor.withOpacity(.2),
                                inactiveColor: Colors.white,
                                activeColor: AppStyles.mainColor,
                                selectedFillColor: AppStyles.mainColor,
                                selectedColor: AppStyles.mainColor,

                                // selectedFillColor:
                              ),
                              animationDuration:
                                  const Duration(milliseconds: 300),
                              enableActiveFill: true,

                              // controller: controller.otp,
                              onCompleted: (v) {
                                loginController.changeIscomplete(true);
                              },
                              onChanged: (value) {
                                if (value.length < 6) {
                                  loginController.changeIscomplete(false);
                                }
                                loginController.changeCompnayNumber(value);
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                              appContext: context,
                            ),
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          onPressed: () => loginController.isCompelte
                              ? loginController.companyCheck()
                              : Fluttertoast.showToast(
                                  msg: "please fill the company number field",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0),
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
                          color: AppStyles.mainColor,
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
