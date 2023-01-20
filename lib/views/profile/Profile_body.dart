import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/Sales/Sales.dart';

import '../home/home_view.dart';
import '../widgets/Text_widets.dart';

class Profile_body extends StatelessWidget {
  const Profile_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 12, right: 12),
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
                    GestureDetector(
                      onTap: () {
                        Get.off(() => HomeView());
                      },
                      child: IconButton(
                        onPressed: () {
                          //print("lll");
                          Get.off(() => HomeView());
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                    Text_widets(
                      text: "الملف الشخصي",
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
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                height: 770,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 132, bottom: 34),
                  child: Stack(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                          maxRadius: 46,
                          backgroundImage: AssetImage(
                            "assets/images/screen.png",
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 85, start: 38),
                        height: 36,
                        width: 34,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 163, 189, 220),
                            borderRadius: BorderRadius.circular(28)),
                        child: Icon(Icons.edit_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 275, start: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---> Name
                  Text_widets(
                    text: "الإسم",
                    Colors: AppStyles.fontColor,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 30,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text_widets(
                              text: "إبراهيم محمد الحسن المبارك",
                              Colors: AppStyles.mainColor,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 50),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 25, 83, 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 30),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //--->
                  Text_widets(
                    text: "الصفة",
                    Colors: AppStyles.fontColor,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 30,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text_widets(
                              text: "مندوب مبيعات",
                              Colors: AppStyles.mainColor,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 50),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 25, 83, 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 30),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //--->
                  Text_widets(
                    text: "رقم الهاتف",
                    Colors: AppStyles.fontColor,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 30,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text_widets(
                              text: "+249912345678",
                              Colors: AppStyles.mainColor,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 50),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 25, 83, 153),
                          ),
                        ),
                        //--->
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 30),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[400],
                    ),
                  ),
                  //--->
                  SizedBox(
                    height: 20,
                  ),
                  Text_widets(
                    text: "البريد الالكتروني",
                    Colors: AppStyles.fontColor,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 30,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text_widets(
                              text: "myemail@yahoo.com",
                              Colors: AppStyles.mainColor,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 50),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 25, 83, 153),
                          ),
                        ),
                        //--->
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 30),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[400],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text_widets(
                    text: "كلمة المرور",
                    Colors: AppStyles.fontColor,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 30,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text_widets(
                              text: "********",
                              Colors: AppStyles.mainColor,
                              size: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 50),
                          child: Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 25, 83, 153),
                          ),
                        ),
                        //--->
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20, end: 30),
                    child: Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        "حفظ التعديلات",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
                //--->
              ),
            ),
          ),
        ],
      ),
    );
  }
}
