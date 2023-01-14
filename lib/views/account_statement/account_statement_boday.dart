import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/account_statement/account_statement.dart';
import 'package:gpitco/views/widgets/Text_widets.dart';

import '../home/home_view.dart';

class account_statement_boday extends StatelessWidget {
  const account_statement_boday({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 12, left: 12),
              child: Container(
                height: 55,
                width: 370,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 25, 83, 153),
                    borderRadius: BorderRadius.circular(28)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Get.to(() => Accountstatement()),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Text_widets(
                        text: "كشف حساب عميل",
                        Colors: Colors.white,
                        size: 23,
                      ),
                      Icon(
                        Icons.menu_open_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 120),
              child: SingleChildScrollView(
                child: Container(
                  height: 745,
                  width: 398,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28),
                        child: Container(
                          height: 90,
                          width: 372,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 15, start: 18),
                                      child: Text_widets(
                                        text: 'الكود',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 12, start: 18),
                                      child: Text_widets(
                                        text: 'الاسم',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 15, start: 14),
                                      child: Text_widets(
                                        text: '003',
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        Colors: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 12, start: 14),
                                      child: Text_widets(
                                        text: 'محمد غانم',
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        Colors: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 15, start: 14),
                                      child: Text_widets(
                                        text: 'التاريخ',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 12, start: 14),
                                      child: Text_widets(
                                        text: 'كود الحساب',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 15, start: 14),
                                      child: Text_widets(
                                        text: '3:00 2022/11/11',
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        Colors: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: 12, start: 14),
                                      child: Text_widets(
                                        text: '01452',
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                        Colors: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 140,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28)),
                        child: Table(
                          //border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Text("التاريخ"),
                              ],
                            ),
                            TableRow(children: [
                              Text("التاريخ"),
                            ])
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
