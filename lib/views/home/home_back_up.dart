// import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:gpitco/controllers/home_controller.dart';
// import 'package:gpitco/controllers/login_controller.dart';
// import 'package:gpitco/localization/translater.dart';
// import 'package:gpitco/models/company_user.dart';
// import 'package:gpitco/utils/ui/app_styles.dart';
// import 'package:gpitco/utils/ui/constants.dart';
// import 'package:gpitco/views/invoices/create_new_purchase_invoice.dart';
// import 'package:gpitco/views/invoices/create_new_sell_invoice.dart';
// import 'package:gpitco/views/invoices/invoices_list_view.dart';
// import 'package:gpitco/views/payment_voucher/add_payment_voucher.dart';

// import '../../controllers/choose_language_controller.dart';
// import '../bond_catch/bond_catch_view.dart';

// class HomeView extends StatelessWidget {
//   HomeView({Key? key}) : super(key: key);
//   GlobalKey<ScaffoldState>? skey = GlobalKey<ScaffoldState>();

//   final company = Get.find<LoginController>().user;
//   @override
//   Widget build(BuildContext context) {
//     final languageKeys = Get.find<LanguageController>().languageKeys.data!;

//     return GetBuilder<HomeCotnroller>(
//         init: Get.put(HomeCotnroller()),
//         builder: (homeController) {
//           return Scaffold(
//             key: skey,
//             appBar: AppBar(
//               centerTitle: false,
//               toolbarHeight: 100,
//               backgroundColor: AppStyles.mainColor,
//               title: Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "${translateKey(languageKeys.companyText!)} ${company!.data!.user!.company!.name!} ",
//                       style: AppStyles.heading4,
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       company!.data!.user!.job ?? "",
//                       style: AppStyles.bodyMediumL.copyWith(),
//                     ),
//                   ],
//                 ),
//               ),
//               actions: [
//                 Container(
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
//                   height: 40,
//                   width: 40,
//                   // padding: ,
//                   decoration: BoxDecoration(
//                     color: AppStyles.selectionColor,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Icon(Icons.settings),
//                 ),
//                 IconButton(
//                     onPressed: () {
//                       skey!.currentState!.openEndDrawer();
//                     },
//                     icon: Icon(Icons.menu))
//               ],
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(
//                   bottom: Radius.circular(30),
//                 ),
//               ),
//             ),
//             endDrawer: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
//               width: deviceWidth(context) / 1.5,
//               height: deviceHeight(context),
//               decoration: const BoxDecoration(
//                   color: AppStyles.mainColor,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(20),
//                     bottomRight: Radius.circular(20),
//                   )),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 45,
//                               height: 45,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(45),
//                               ),
//                               child: const Icon(
//                                 Icons.person,
//                                 color: AppStyles.mainColor,
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     company!.data!.user!.username!,
//                                     style: AppStyles.bodyBoldL
//                                         .copyWith(color: Colors.white),
//                                   ),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text(
//                                     company!.data!.user!.company!.name!,
//                                     style: AppStyles.bodyMediumM
//                                         .copyWith(color: Colors.grey.shade200),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 15),
//                       IconButton(
//                         onPressed: () {
//                           skey!.currentState!.closeEndDrawer();
//                         },
//                         icon: Icon(
//                           Icons.close,
//                           color: Colors.white,
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Divider(
//                     color: Colors.grey.shade300,
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Text(
//                     translateKey(languageKeys.profileText!),
//                     style: AppStyles.bodyBoldL
//                         .copyWith(color: Colors.grey.shade400),
//                   ),
//                   const SizedBox(height: 15),
//                   Divider(
//                     color: Colors.grey.shade300,
//                   ),
//                   Text(
//                     translateKey(languageKeys.technicalSupportText!),
//                     style: AppStyles.bodyBoldL
//                         .copyWith(color: Colors.grey.shade400),
//                   ),
//                   const SizedBox(height: 15),
//                   Divider(
//                     color: Colors.grey.shade300,
//                   ),
//                   Text(
//                     translateKey(languageKeys.aboutText!),
//                     style: AppStyles.bodyBoldL
//                         .copyWith(color: Colors.grey.shade400),
//                   ),
//                   const Spacer(),
//                   Divider(
//                     color: Colors.grey.shade300,
//                   ),
//                   const SizedBox(height: 15),
//                   GestureDetector(
//                     onTap: () {
//                       Get.find<LoginController>().logout();
//                     },
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.logout,
//                           color: Colors.grey.shade400,
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           translateKey(languageKeys.logoutText!),
//                           style: AppStyles.bodyBoldL
//                               .copyWith(color: Colors.grey.shade400),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             body: homeController.loading
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       strokeWidth: 3,
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       child: Column(
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.symmetric(vertical: 10),
//                             width: double.infinity,
//                             padding: const EdgeInsets.all(10),
//                             // height: 150,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: 55,
//                                   width: 55,
//                                   decoration: BoxDecoration(
//                                     color: Colors.orange,
//                                     borderRadius: BorderRadius.circular(55),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 10),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       translateKey(languageKeys.welcomeHome!),
//                                       style: AppStyles.bodyMediumM,
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       "${company!.data!.user!.username}",
//                                       style: AppStyles.heading5,
//                                     ),
//                                   ],
//                                 ),
//                                 const Spacer(),
//                                 Container(
//                                   margin: const EdgeInsets.symmetric(
//                                       horizontal: 10),
//                                   width: 55,
//                                   height: 55,
//                                   decoration: BoxDecoration(
//                                     color: Colors.grey.shade200,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Icon(
//                                     Icons.dashboard,
//                                     size: 30,
//                                     color: AppStyles.mainColor,
//                                   ),
//                                 ),
//                                 Container(
//                                   margin: const EdgeInsets.symmetric(
//                                       horizontal: 10),
//                                   width: 55,
//                                   height: 55,
//                                   decoration: BoxDecoration(
//                                     color: Colors.grey.shade200,
//                                     borderRadius: BorderRadius.circular(15),
//                                   ),
//                                   child: Icon(
//                                     Icons.calculate,
//                                     size: 30,
//                                     color: AppStyles.mainColor,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 padding: const EdgeInsets.all(10),
//                                 height: 120,
//                                 width: 120,
//                                 decoration: BoxDecoration(
//                                   color: AppStyles.mainColor,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Icon(
//                                       Icons.file_copy_sharp,
//                                       color: Colors.white,
//                                       size: 30,
//                                     ),
//                                     const Spacer(),
//                                     Text(
//                                       translateKey(languageKeys.invoicesText!),
//                                       style: AppStyles.heading6
//                                           .copyWith(color: Colors.white),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       // "12 عميل و مورد",
//                                       "",
//                                       style: AppStyles.bodyMediumS.copyWith(
//                                           color: AppStyles.selectionColor),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(10),
//                                 height: 120,
//                                 width: 120,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Icon(
//                                       Icons.verified_user_sharp,
//                                       color: AppStyles.mainColor,
//                                       size: 30,
//                                     ),
//                                     const Spacer(),
//                                     Text(
//                                       translateKey(
//                                           languageKeys.customSupplieText!),
//                                       style: AppStyles.heading6
//                                           .copyWith(color: AppStyles.mainColor),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       "",
//                                       // "12 عميل و مورد",
//                                       style: AppStyles.bodyMediumS.copyWith(
//                                           color: AppStyles.selectionColor),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(10),
//                                 height: 120,
//                                 width: 120,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Icon(
//                                       Icons.business,
//                                       color: AppStyles.mainColor,
//                                       size: 30,
//                                     ),
//                                     const Spacer(),
//                                     Text(
//                                       translateKey(languageKeys.reportsText!),
//                                       style: AppStyles.heading6
//                                           .copyWith(color: AppStyles.mainColor),
//                                     ),
//                                     const SizedBox(height: 5),
//                                     Text(
//                                       // "12 عميل و مورد",,
//                                       "",
//                                       style: AppStyles.bodyMediumS.copyWith(
//                                           color: AppStyles.selectionColor),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 30),
//                           ListView.builder(
//                             itemBuilder: (context, index) {
//                               String? operation = [
//                                 translateKey(languageKeys.listInvoicesText!),
//                                 translateKey(
//                                     languageKeys.salesPurchaseReturnText!),
//                                 translateKey(languageKeys.bondCatchText!),
//                                 translateKey(languageKeys.bondExchangeText!),
//                               ][index];
//                               return GestureDetector(
//                                 onTap: () {
//                                   if (index == 0) {
//                                     Get.to(() => const InvoicesListView());
//                                   }
//                                   if (index == 2) {
//                                     Get.to(() => const BondCatchView());
//                                   }
//                                   if (index == 3) {
//                                     Get.to(() => const AddPaymentVoucher());
//                                   }
//                                 },
//                                 child: Container(
//                                   margin:
//                                       const EdgeInsets.symmetric(vertical: 10),
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 15, horizontal: 10),
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(20),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.grey.shade300,
//                                           spreadRadius: 2,
//                                           blurRadius: 3,
//                                           offset: Offset(1, 1),
//                                         )
//                                       ]),
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.file_copy,
//                                         size: 35,
//                                         color: AppStyles.mainColor,
//                                       ),
//                                       const SizedBox(width: 10),
//                                       Text(
//                                         "$operation",
//                                         style: AppStyles.heading5.copyWith(
//                                             color: AppStyles.mainColor),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                             itemCount: 4,
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                           )
//                         ],
//                       ),
//                     ),
        
// //<<<<<<< HEAD
//                   ),
//             bottomNavigationBar: BottomBarWithSheet(
//               // controller: _bottomBarController,
//               bottomBarTheme: const BottomBarTheme(
//                 mainButtonPosition: MainButtonPosition.left,
//                 decoration: BoxDecoration(
//                   color: AppStyles.mainColor,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//                 ),
//               ),

//               onSelectItem: (index) => debugPrint('$index'),
//               mainActionButtonTheme: MainActionButtonTheme(
//                 color: AppStyles.selectionColor,
//               ),
//               sheetChild: Container(
//                 height: 200,
//                 padding: const EdgeInsets.all(10),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
// //=======
//                 ),
//                  ),  
//                 },
//                 itemCount: 4,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//               )
              
//             ],
            
//           ),
//         ),
//       ),

//       bottomNavigationBar: BottomBarWithSheet(
//         // controller: _bottomBarController,
//         bottomBarTheme: const BottomBarTheme(
//           mainButtonPosition: MainButtonPosition.left,
//           decoration: BoxDecoration(
//             color: AppStyles.mainColor,
//             borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//           ),
//         ),

//         onSelectItem: (index) => debugPrint('$index'),
//         mainActionButtonTheme: MainActionButtonTheme(
//           color: AppStyles.selectionColor,
//         ),
//         sheetChild: Container(
//           height: 200,
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               MaterialButton(
//                 height: 70,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(55)),
//                 color: Colors.white,
//                 onPressed: () {
//                   Get.to(() => CreateNewSellInvoice());
//                 },
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.pause_presentation,
//                       color: AppStyles.mainColor,
//                       size: 30,
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "إنشاء فاتورة مبيعات",
//                       style: AppStyles.bodyBoldL.copyWith(
//                         fontSize: 22,
//                         color: AppStyles.mainColor,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 30),
//               MaterialButton(
//                 height: 70,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(55)),
//                 color: Colors.white,
//                 onPressed: () {
//                   Get.to(() => CreateNewPurchaseInvoice());
//                 },
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
// //>>>>>>> 5f851301b1440fbda0bb1aa26db504e59c0d147e
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     MaterialButton(
//                       height: 70,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(55)),
//                       color: Colors.white,
//                       onPressed: () {
//                         Get.to(() => const CreateNewInvoice());
//                       },
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.pause_presentation,
//                             color: AppStyles.mainColor,
//                             size: 30,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "إنشاء فاتورة جديدة",
//                             style: AppStyles.bodyBoldL.copyWith(
//                               fontSize: 22,
//                               color: AppStyles.mainColor,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     MaterialButton(
//                       height: 70,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(55)),
//                       color: Colors.white,
//                       onPressed: () {},
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.pause_presentation,
//                             color: AppStyles.mainColor,
//                             size: 30,
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Text(
//                             "إنشاء فاتورة مشتريات",
//                             style: AppStyles.bodyBoldL.copyWith(
//                               fontSize: 22,
//                               color: AppStyles.mainColor,
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               items: const [],
//             ),
//           );
//         });
//   }
// }

// class InvoiceItem extends StatelessWidget {
//   const InvoiceItem({
//     this.title,
//     this.value,
//     Key? key,
//   }) : super(key: key);
//   final String? title;
//   final String? value;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title!,
//             style: AppStyles.bodyBoldL.copyWith(
//               color: AppStyles.mainTextColor,
//             ),
//           ),
//           Text(
//             value!,
//             style: AppStyles.heading5.copyWith(color: AppStyles.mainColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
