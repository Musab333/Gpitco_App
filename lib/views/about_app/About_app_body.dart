import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';

import '../home/home_view.dart';
import '../widgets/Text_widets.dart';

class About_app_body extends StatelessWidget {
  const About_app_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 45, bottom: 12, right: 12),
          child: Expanded(
            child: Container(
              // h: 55
              height: MediaQuery.of(context).size.height / 15,
              // width: 370
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 67, 125),
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsets.all(8),
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
                    Text_widets(
                      text: "حول التطبيق",
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
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 120),
          child: Expanded(
            child: Container(
              height: 745,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(0.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Expanded(
                        child: Container(
                            width: double.infinity,
                            child: Center(
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'تطبيق جبتكو تجربة جديدة لتسهيل إدارة مؤسستك',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    'مـــن حيـــث متابعـــة الفواتيـــر والمخـــزون والتقاريـــر',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    'المتعـــددة والأرباح والعديد مـــن المميزات، نتمنى أن',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    '\t\t تنال رضاؤكم.',
                                    style: const TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    'نحن في شركة جبتكو نســـعى دوما لتحسين الجودة',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    'وتطويـــر الآداء على أعمالنا، لهذا نســـعد باقتراحاتكم',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    'دائماّّ ويمكنكم التواصل معنا',
                                    style: TextStyle(
                                      fontSize: 14.3,
                                      color: AppStyles.fontColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      // 50.0,
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Image.asset(
                      'assets/images/logo3.png',
                      fit: BoxFit.fill,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Tel: 00966138999177',
                              style: TextStyle(
                                color: AppStyles.fontColor,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            const Text(
                              'Mob: 00966544085577',
                              style: TextStyle(
                                color: AppStyles.fontColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Email:  info@gpitco.com',
                                style: TextStyle(
                                  color: AppStyles.fontColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              const Text(
                                'Web:  www.gpitco.com',
                                style: TextStyle(
                                  color: AppStyles.fontColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
