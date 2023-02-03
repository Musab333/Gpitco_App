import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../utils/ui/app_styles.dart';
import '../home/home_view.dart';
import '../print/Print.dart';
import '../support_tech/Supporting.dart';
import '../users_privileges/users_privileges.dart';
import '../widgets/Text_widets.dart';

class Sttings_body extends StatefulWidget {
  const Sttings_body({super.key});

  @override
  State<Sttings_body> createState() => _Sttings_bodyState();
}

class _Sttings_bodyState extends State<Sttings_body> {
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
                      onPressed: () => Get.off(() => const Supporting()),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const Text_widets(
                      text: "الإعدادات",
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
          padding: const EdgeInsets.only(top: 120),
          child: Container(
            height: 900,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Get.off(() => const Users_Privileges());
                  },
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text_widets(
                            text: "صلاحيات المستخدمين",
                            Colors: Color(0xff184376),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Get.off(() => const Print());
                          },
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.arrow_back_ios_new,
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
                child: GestureDetector(
                  onTap: () {
                    Get.off(() => const Print());
                  },
                  child: Container(
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text_widets(
                            text: "الطباعة",
                            Colors: Color(0xff184376),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Get.off(() => const Print());
                          },
                          icon: const Icon(
                            color: Color(0xff184376),
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    DropdownButton(
                      onChanged: (lang) {
                        // setState(() {
                        //   valueChoose = newVal;
                        // });
                      },
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text_widets(
                          text: "اللغة",
                          Colors: Color(0xff184376),
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xff184376),
                      ),
                      items: [
                        "العربية",
                        "English",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              // ignore: sort_child_properties_last
                              child: Container(
                                // height: 20,
                                width: 340,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "$e",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff184376),
                                    ),
                                  ),
                                ),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //
      ]),
    );
  }
}
