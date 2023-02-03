import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/views/sttings/Sttings.dart';

import '../../utils/ui/app_styles.dart';
import '../home/home_view.dart';
import '../widgets/Text_widets.dart';

class Users_Privileges_body extends StatefulWidget {
  const Users_Privileges_body({super.key});

  @override
  State<Users_Privileges_body> createState() => _Users_Privileges_bodyState();
}

class _Users_Privileges_bodyState extends State<Users_Privileges_body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 45, bottom: 12, right: 12),
          child: Expanded(
            child: Container(
              height: 55,
              width: 370,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 67, 125),
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.off(() => const Sttings());
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const Text_widets(
                      text: "صلاحيات المستخدمين",
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
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 28, 28),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Column(
                            //mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsetsDirectional.only(
                                    top: 30, bottom: 10, start: 20),
                                child: Text_widets(
                                  text: "محمد عبد الله أحمد",
                                  Colors: Color(0xff184376),
                                  size: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text_widets(
                                  text: "مدير مبيعات",
                                  Colors: Colors.grey[600],
                                  size: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              color: Color(0xff184376),
                              Icons.more_vert_rounded,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Expanded(
            child: Container(
              height: 900,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
        ), //-->
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 30, bottom: 10, start: 20),
                              child: Text_widets(
                                text: "محمد عبد الله أحمد",
                                Colors: Color(0xff184376),
                                size: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text_widets(
                                text: "مدير مبيعات",
                                Colors: Colors.grey[600],
                                size: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.more_vert_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 30, bottom: 10, start: 20),
                              child: Text_widets(
                                text: "خالد عبد الرحمن",
                                Colors: Color(0xff184376),
                                size: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text_widets(
                                text: "مدير مشتريات",
                                Colors: Colors.grey[600],
                                size: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.more_vert_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 30, bottom: 10, start: 20),
                              child: Text_widets(
                                text: "عبد العزيز الصاوي",
                                Colors: Color(0xff184376),
                                size: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text_widets(
                                text: "مدير مبيعات",
                                Colors: Colors.grey[600],
                                size: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.more_vert_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          //mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 30, bottom: 10, start: 20),
                              child: Text_widets(
                                text: "عبد الله صالح",
                                Colors: Color(0xff184376),
                                size: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text_widets(
                                text: "مدير مخازن",
                                Colors: Colors.grey[600],
                                size: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.more_vert_rounded,
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
      ]),
    );
  }
}
