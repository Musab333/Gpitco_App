import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/home_view.dart';
import '../widgets/Text_widets.dart';

class Payment_voucher_body extends StatelessWidget {
  const Payment_voucher_body({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
                          onPressed: () => Get.to(() => HomeView()),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Text_widets(
                          text: "سند القبض",
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Container(
                  height: 640,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "رقم المسند",
                              ),
                              Text(
                                "003",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "التاريخ",
                              ),
                              Text(
                                "11/11/2022 3:00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180, top: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "الفرع",
                            ),
                            Text(
                              "الرئيسي",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(end: 180, top: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "الصندوق",
                            ),
                            Text(
                              "الرئيسي",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(end: 180, top: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "نوع الحركة",
                            ),
                            Text(
                              "عميل",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(end: 90, top: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "اسم العميل",
                            ),
                            Text(
                              "محمد عبد الله احمد",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 10, top: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "كود العميل",
                            ),
                            Text(
                              "012345",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "القيمة",
                            ),
                            Text(
                              "45,000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 20, start: 20, end: 20),
                        child: Container(
                          height: 1.0,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 270),
                            child: Text(
                              "البيان",
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: TextField(
                                //enabled: false,
                                readOnly: true,
                                maxLines: 3,
                                decoration: InputDecoration(
                                    hintText:
                                        "في هذا الحقـــل يمكن للعميل كتابة البيان الخاص بســـند الدف أو القبض أو أي ملاحظات",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 170,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(28),
                                        border: Border.all(
                                            color: Color(0xff184376))),
                                    child: Center(
                                      child: Text(
                                        "طباعة",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 170,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xff184376),
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "سند جديد",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  minWidth: 15.0,
                                  onPressed: () {},
                                  color: Colors.grey[300],
                                  //minWidth: 10,
                                  child: const Icon(
                                    Icons.share,
                                    color: Color.fromARGB(255, 25, 83, 153),
                                    //size: 25.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                MaterialButton(
                                  minWidth: 15.0,
                                  onPressed: () {},
                                  color: Colors.grey[300],
                                  //minWidth: 10,
                                  child: const Icon(
                                    Icons.download,
                                    color: Color.fromARGB(255, 25, 83, 153),
                                    //size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
