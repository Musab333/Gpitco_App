import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/sttings/Sttings.dart';
import 'package:gpitco/views/widgets/Text_widets.dart';

import '../home/home_view.dart';

class Print_body extends StatelessWidget {
  const Print_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 45, bottom: 12, start: 12),
          child: Container(
            height: 55,
            width: 370,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 25, 83, 153),
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.off(() => const Sttings());
                      //print("lll");
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const Text_widets(
                    text: "الطباعة",
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
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: SingleChildScrollView(
                child: Container(
                  height: 870,
                  width: 420,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(28)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 67,
                          width: 372,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text_widets(
                                text: 'حجم الخط',
                                Colors: Colors.black,
                                size: 18,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 120),
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: AppStyles.fontColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const TextField(
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '14',
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 67,
                            width: 372,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text_widets(
                                  text: 'مقاس الورقة',
                                  Colors: Colors.black,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 84),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppStyles.fontColor),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 67,
                            width: 372,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text_widets(
                                  text: 'عدد النسخ',
                                  Colors: Colors.black,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 120),
                                  child: Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: AppStyles.fontColor),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '1',
                                          hintStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 340),
                          child: Container(
                            width: 330,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff184376),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: const Center(
                              child: Text(
                                "حفظ التعديلات",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  //fontWeight: FontWeight.bold,
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
            ),
          ),
        ),
      ]),
    );
  }
}
