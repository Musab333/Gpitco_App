//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/views/sttings/Sttings.dart';
//import 'package:get/get_core/src/get_main.dart';
import '../../utils/ui/app_styles.dart';
import '../home/home_view.dart';
import '../privacy_policies/Privacy_Policies.dart';
import '../widgets/Text_widets.dart';

class Supporting_body extends StatefulWidget {
  const Supporting_body({Key? key}) : super(key: key);

  @override
  State<Supporting_body> createState() => _Supporting_bodyState();
}

class _Supporting_bodyState extends State<Supporting_body> {
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
                      onPressed: () => Get.off(() => HomeView()),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    Text_widets(
                      text: "الدعم الفني",
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
                    Get.off(() => const Privacy_Policies());
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
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text_widets(
                            text: "سياسة الخصوصية",
                            Colors: Color(0xff184376),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            Get.off(() => const Privacy_Policies());
                          },
                          icon: Icon(
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
                    Get.off(() => const Sttings());
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
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text_widets(
                            text: "مركز المساعدة",
                            Colors: Color(0xff184376),
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            Get.off(() => Privacy_Policies());
                            //Privacy_Policies
                          },
                          icon: Icon(
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
                child: Container(
                  height: 380,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text_widets(
                          text: "الإتصال بنا",
                          Colors: Color(0xff184376),
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            //mouseCursor: Center,
                            decoration: InputDecoration(
                              hintText: "\t \t \t الاسم",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            //mouseCursor: Center,
                            decoration: InputDecoration(
                              hintText: "\t \t \t بريدك الالكتروني",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            //mouseCursor: Center,
                            decoration: InputDecoration(
                              hintText: "\t \t \t الرسالة",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 330,
                        height: 45,
                        decoration: BoxDecoration(
                          color: AppStyles.mainColor,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(
                          child: Text(
                            "إرسال",
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
            ],
          ),
        ),
        //
      ]),
    );

    //
  }
}
