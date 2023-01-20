import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/home_contorller.dart';
import 'package:gpitco/controllers/home_controller.dart';
import 'package:gpitco/controllers/login_controller.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/models/company_user.dart';
import 'package:gpitco/utils/simple_calculator/SimpleCalculator.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/utils/ui/constants.dart';
import 'package:gpitco/views/invoices/create_new_purchase_invoice.dart';
import 'package:gpitco/views/invoices/create_new_sell_invoice.dart';
import 'package:gpitco/views/invoices/invoices_list_view.dart';
import 'package:gpitco/views/payment_voucher/add_payment_voucher.dart';
import 'package:gpitco/views/sttings/Sttings.dart';
import '../../controllers/choose_language_controller.dart';
import '../Sales/Sales.dart';
import '../about_app/About_app.dart';
import '../bond_catch/bond_catch_result.dart';
import '../bond_catch/bond_catch_view.dart';
import '../payment/Payment_voucher.dart';
import '../payment_voucher/result_view.dart';
import '../profile/Profile.dart';
import '../purchases/Purchase_returns.dart';
import '../support_tech/Supporting.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState>? skey = GlobalKey<ScaffoldState>();

  final company = Get.find<LoginController>().user;
  double? _currentValue = 0;
  var calc;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCotnroller>(
        init: Get.put(HomeCotnroller()),
        builder: (homeController) {
          final languageKeys =
              Get.find<LanguageController>().languageKeys.data!;
          return Scaffold(
            key: skey,
            appBar: AppBar(
              centerTitle: false,
              toolbarHeight: 100,
              backgroundColor: AppStyles.mainColor,
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${translateKey(languageKeys.companyText!)} ${company!.data!.user!.company!.name!} ",
                      style: AppStyles.heading4,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      company!.data!.user!.job ?? "",
                      style: AppStyles.bodyMediumL.copyWith(),
                    ),
                  ],
                ),
              ),
              actions: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  height: 40,
                  width: 40,
                  // padding: ,
                  decoration: BoxDecoration(
                    color: AppStyles.selectionColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                      onPressed: () => () {
                            Get.off(() => const Sttings());
                            //print('Sttings');
                          },
                      icon: const Icon(Icons.settings)),
                ),
                IconButton(
                  onPressed: () {
                    skey!.currentState!.openEndDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
            ),
            endDrawer: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              width: deviceWidth(context) / 1.5,
              height: deviceHeight(context),
              decoration: const BoxDecoration(
                  color: AppStyles.mainColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: const Icon(
                                Icons.person,
                                color: AppStyles.mainColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    company!.data!.user!.username!,
                                    style: AppStyles.bodyBoldL
                                        .copyWith(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    company!.data!.user!.company!.name!,
                                    style: AppStyles.bodyMediumM
                                        .copyWith(color: Colors.grey.shade200),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      IconButton(
                        onPressed: () {
                          skey!.currentState!.closeEndDrawer();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () => Get.off(() => const Profile()),
                      child: Text(
                        translateKey(languageKeys.profileText!),
                        style: AppStyles.bodyBoldL
                            .copyWith(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(() => const Supporting()),
                    child: Text(
                      translateKey(languageKeys.technicalSupportText!),
                      style: AppStyles.bodyBoldL
                          .copyWith(color: Colors.grey.shade400),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  GestureDetector(
                    onTap: () => Get.off(() => const About_app()),
                    child: Text(
                      translateKey(languageKeys.aboutText!),
                      style: AppStyles.bodyBoldL
                          .copyWith(color: Colors.grey.shade400),
                    ),
                  ),
                  const Spacer(),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.find<LoginController>().logout();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.grey.shade400,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          translateKey(languageKeys.logoutText!),
                          style: AppStyles.bodyBoldL
                              .copyWith(color: Colors.grey.shade400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            body: homeController.loading
                ? const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            // height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(55),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      translateKey(languageKeys.welcomeHome!),
                                      style: AppStyles.bodyMediumM,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "${company!.data!.user!.username}",
                                      style: AppStyles.heading5,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Icon(
                                    Icons.dashboard,
                                    size: 30,
                                    color: AppStyles.mainColor,
                                  ),
                                ),
                                //SimpleCalculator
                                const CalcButton(),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: AppStyles.mainColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.file_copy_sharp,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      const Spacer(),
                                      Text(
                                        translateKey(
                                            languageKeys.invoicesText!),
                                        style: AppStyles.heading6
                                            .copyWith(color: Colors.white),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        // "12 عميل و مورد",
                                        "",
                                        style: AppStyles.bodyMediumS.copyWith(
                                            color: AppStyles.selectionColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.verified_user_sharp,
                                      color: AppStyles.mainColor,
                                      size: 30,
                                    ),
                                    const Spacer(),
                                    Text(
                                      translateKey(
                                          languageKeys.customSupplieText!),
                                      style: AppStyles.heading6
                                          .copyWith(color: AppStyles.mainColor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "",
                                      // "12 عميل و مورد",
                                      style: AppStyles.bodyMediumS.copyWith(
                                          color: AppStyles.selectionColor),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.business,
                                      color: AppStyles.mainColor,
                                      size: 30,
                                    ),
                                    const Spacer(),
                                    Text(
                                      translateKey(languageKeys.reportsText!),
                                      style: AppStyles.heading6
                                          .copyWith(color: AppStyles.mainColor),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      // "12 عميل و مورد",,
                                      "",
                                      style: AppStyles.bodyMediumS.copyWith(
                                          color: AppStyles.selectionColor),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          ListView.builder(
                            itemBuilder: (context, index) {
                              String? operation = [
                                translateKey(languageKeys.listInvoicesText!),
                                translateKey(
                                    languageKeys.salesPurchaseReturnText!),
                                translateKey(languageKeys.bondCatchText!),
                                translateKey(languageKeys.bondExchangeText!),
                                //
                                translateKey(languageKeys.bondExchangeText!),
                              ][index];
                              return GestureDetector(
                                onTap: () {
                                  if (index == 0) {
                                    Get.to(() => const InvoicesListView());
                                  }
                                  if (index == 1) {
                                    // شاشة مردودات المبيعات
                                    Get.to(() => const Sales());
                                  }
                                  if (index == 2) {
                                    // شاشة مردودات المشتريات
                                    Get.to(() => const Purchase_returns());
                                  }
                                  if (index == 3) {
                                    // شاشة القبض
                                    //AddPaymentVoucher
                                    Get.to(() => const AddPaymentVoucher());
                                  }
                                  if (index == 4) {
                                    // شاشة الصرف
                                    //CabResultView
                                    //BondCatchView
                                    Get.to(() => const BondCatchView());
                                  }
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(1, 1),
                                        )
                                      ]),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.file_copy,
                                        size: 35,
                                        color: AppStyles.mainColor,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "$operation",
                                        style: AppStyles.heading5.copyWith(
                                            color: AppStyles.mainColor),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                          )
                        ],
                      ),
                    ),
                  ),
            bottomNavigationBar: BottomBarWithSheet(
              // controller: _bottomBarController,
              bottomBarTheme: const BottomBarTheme(
                mainButtonPosition: MainButtonPosition.left,
                decoration: BoxDecoration(
                  color: AppStyles.mainColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
              ),

              onSelectItem: (index) => debugPrint('$index'),
              mainActionButtonTheme: const MainActionButtonTheme(
                color: AppStyles.selectionColor,
              ),
              sheetChild: Container(
                height: 200,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      height: 70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55)),
                      color: Colors.white,
                      onPressed: () {
                        //Get.to(() => const Profile());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.pause_presentation,
                            color: AppStyles.mainColor,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            translateKey(languageKeys.createInvoiceText!),
                            style: AppStyles.bodyBoldL.copyWith(
                              fontSize: 22,
                              color: AppStyles.mainColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      height: 70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55)),
                      color: Colors.white,
                      onPressed: () {
                        Get.to(() => const Profile());
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.pause_presentation,
                            color: AppStyles.mainColor,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            translateKey(languageKeys.createPurchaseText!),
                            style: AppStyles.bodyBoldL.copyWith(
                              fontSize: 22,
                              color: AppStyles.mainColor,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              items: const [],
            ),
          );
        });
  }
}

class InvoiceItem extends StatelessWidget {
  const InvoiceItem({
    this.title,
    this.value,
    Key? key,
  }) : super(key: key);
  final String? title;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: AppStyles.bodyBoldL.copyWith(
              color: AppStyles.mainTextColor,
            ),
          ),
          Text(
            value!,
            style: AppStyles.heading5.copyWith(color: AppStyles.mainColor),
          ),
        ],
      ),
    );
  }
}

//---> Cal
// class CalcButton extends StatefulWidget {
//   const CalcButton({Key? key}) : super(key: key);

//   @override
//   _CalcButtonState createState() => _CalcButtonState();
// }

// class _CalcButtonState extends State<CalcButton> {
//   double? _currentValue = 0;
//   @override
//   Widget build(BuildContext context) {
//     var calc = SimpleCalculator(
//       value: _currentValue!,
//       hideExpression: false,
//       hideSurroundingBorder: true,
//       autofocus: true,
//       onChanged: (key, value, expression) {
//         setState(() {
//           _currentValue = value ?? 0;
//         });
//         if (kDebugMode) {
//           print('$key\t$value\t$expression');
//         }
//       },
//       onTappedDisplay: (value, details) {
//         if (kDebugMode) {
//           print('$value\t${details.globalPosition}');
//         }
//       },
//       theme: const CalculatorThemeData(
//         borderColor: Colors.black,
//         borderWidth: 2,
//         displayColor: Colors.black,
//         displayStyle: TextStyle(fontSize: 80, color: Colors.yellow),
//         expressionColor: Colors.indigo,
//         expressionStyle: TextStyle(fontSize: 20, color: Colors.white),
//         operatorColor: Colors.pink,
//         operatorStyle: TextStyle(fontSize: 30, color: Colors.white),
//         commandColor: Colors.orange,
//         commandStyle: TextStyle(fontSize: 30, color: Colors.white),
//         numColor: Colors.grey,
//         numStyle: TextStyle(fontSize: 50, color: Colors.white),
//       ),
//     );

//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       width: 55,
//       height: 55,
//       decoration: BoxDecoration(
//         color: Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       //---> Cal
//       child: IconButton(
//         onPressed: () {
//           {
//             showModalBottomSheet(
//               isScrollControlled: true,
//               context: context,
//               builder: (BuildContext context) {
//                 return SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.75,
//                   child: calc,
//                 );
//               },
//             );
//           }
//           ;
//           //print('Cal');
//         },
//         icon: const Icon(
//           Icons.calculate,
//           size: 30,
//           color: AppStyles.mainColor,
//         ),
//       ),
//     );
//   }
// }
