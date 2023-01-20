import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import '../home/home_view.dart';
import '../widgets/Text_widets.dart';

class Sales_body extends StatelessWidget {
  const Sales_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 45, bottom: 12, start: 12),
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                      onPressed: () => Get.off(() => HomeView()),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const Text_widets(
                      text: "مردوات مبيعات",
                      Colors: Colors.white,
                      size: 23,
                    ),
                    const Icon(
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
                      padding: const EdgeInsets.only(top: 38),
                      child: Container(
                        height: 55,
                        width: 264,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppStyles.mainColor,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'أدخل رقم الفاتورة',
                            suffixIcon: Icon(Icons.search),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: Container(
                        height: 90,
                        width: 372,
                        decoration: BoxDecoration(
                            color: Colors.white,
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
                                      text: 'رقم الفاتورة',
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
                                      text: 'الفرع',
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
                                      text: '101',
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
                                      text: 'الرياض',
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
                                      text: 'اسم المورد',
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
                                      text: 'المخزن',
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
                                      text: 'محمد احمد حسن',
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
                                      text: 'الريئسي',
                                      size: 16,
                                      Colors: AppStyles.fontColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Expanded(
                        child: Container(
                          height: 300,
                          width: 372,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: AppStyles.mainColor)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 15, start: 18),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text_widets(
                                      text: 'اسم الصنف',
                                      size: 16,
                                      Colors: AppStyles.fontColor,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsetsDirectional.only(start: 20),
                                      child: Text_widets(
                                        text: 'الكمية',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 20),
                                      child: Text_widets(
                                        text: 'السعر',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 20),
                                      child: Text_widets(
                                        text: 'الضرئية',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 20),
                                      child: Text_widets(
                                        text: 'الاجمالي',
                                        size: 16,
                                        Colors: AppStyles.fontColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 70.0,
                                  width: 346,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text_widets(
                                            text: 'مواسير',
                                            size: 16,
                                            Colors: AppStyles.mainColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 20),
                                          child: Container(
                                            height: 235.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: AppStyles.mainColor),
                                            ),
                                            child: Center(
                                              child: TextField(
                                                keyboardType:
                                                    TextInputType.number,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: AppStyles.mainColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                                  hintText: '15',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 20),
                                          child: Text_widets(
                                            text: '15',
                                            size: 16,
                                            Colors: AppStyles.mainColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 58),
                                          child: Text_widets(
                                            text: '40',
                                            size: 16,
                                            Colors: AppStyles.mainColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 52),
                                          child: Text_widets(
                                            text: '40',
                                            size: 16,
                                            Colors: AppStyles.mainColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //---

                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                  child: Container(
                                    height: 70.0,
                                    width: 346,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text_widets(
                                              text: 'حديد كمر',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 5),
                                            child: Container(
                                              height: 235.0,
                                              width: 70.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color:
                                                          AppStyles.mainColor)),
                                              child: Center(
                                                child: TextField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: AppStyles.mainColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                    hintText: '23',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 20),
                                            child: Text_widets(
                                              text: '23',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 58),
                                            child: Text_widets(
                                              text: '40',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 52),
                                            child: Text_widets(
                                              text: '40',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              //---

                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Expanded(
                                  child: Container(
                                    height: 70.0,
                                    width: 346,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text_widets(
                                              text: 'سيخ تسليح',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 5),
                                            child: Container(
                                              height: 235.0,
                                              width: 70.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color:
                                                          AppStyles.mainColor)),
                                              child: Center(
                                                child: TextField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: AppStyles.mainColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none),
                                                    hintText: '40',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 20),
                                            child: Text_widets(
                                              text: '40',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 58),
                                            child: Text_widets(
                                              text: '40',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(start: 52),
                                            child: Text_widets(
                                              text: '40',
                                              size: 16,
                                              Colors: AppStyles.mainColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 330,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff184376),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(
                        child: Text(
                          "إضافة مردود",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
