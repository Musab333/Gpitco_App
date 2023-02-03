import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/home/home_view.dart';

import '../widgets/Text_widets.dart';

class Add_customer_body extends StatelessWidget {
  const Add_customer_body({super.key});

  //var SelectedContentry;

  //String valueChoose;

  //  List listItem = [
  //       "1",
  //       "2",
  //       "3",
  //       "4",
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 12, left: 12),
            child: Expanded(
              child: Container(
                height: 55,
                width: 370,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 19, 67, 125),
                    borderRadius: BorderRadius.circular(28)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.off(() => HomeView());
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Text_widets(
                        text: "إضافة عميل",
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
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(28),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            //mouseCursor: Center,
                            decoration: InputDecoration(
                              hintText: "\t \t \t كود العميل",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t الاسم الاول",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t الاسم الثاني",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t العنوان",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 210),
                          child: Text(
                            "قائمة السعر",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 330,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: DropdownButton(
                            //value: SelectedContentry,
                            onChanged: (newVal) {
                              // setState(() {
                              //   valueChoose = newVal;
                              // });
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Color(0xff184376),
                            ),
                            iconSize: 20,
                            hint: const Text(
                              "\t \t \t سعر الجمهور",
                            ),
                            items: ["a", "b", "c"]
                                .map(
                                  (e) => DropdownMenuItem(
                                    child: Text("$e"),
                                    value: e,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 12, left: 200),
                          child: Text(
                            "طبيعة الحساب",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "مدين / دائن",
                                  style: TextStyle(
                                    color: Color(0xff184376),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff184376),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "مدين",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "دائن",
                                  style: TextStyle(
                                    color: Color(0xff184376),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t المجموعة",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t الهاتف",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.grey[100],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "\t \t \t ملاحظات",
                              border: InputBorder.none,
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
                              "إضافة عميل",
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
            ),
          ),
        ],
      ),
    );
  }
}
