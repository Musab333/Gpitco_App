import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/home/home_view.dart';
import 'package:gpitco/views/widgets/Text_widets.dart';

class Reports_body extends StatelessWidget {
  const Reports_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Expanded(
            child: Container(
              //height: 700,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 120),
                child: SingleChildScrollView(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    //width: 398,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(28)),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            top: 5, start: 18),
                                        child: Text_widets(
                                          text: 'يومية المبيعات',
                                          size: 16,
                                          Colors: AppStyles.fontColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate:
                                                DateTime.parse('2022/11/19'),
                                          ).then((value) => (value) {});
                                          print('Date');
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 164,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .only(end: 120),
                                            child: const Icon(
                                                color: const Color.fromARGB(
                                                    255, 25, 83, 153),
                                                Icons.calendar_month),
                                          ),

                                          // child: Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.spaceBetween,
                                          //   children: [
                                          //     // TextFormField(
                                          //     //   decoration: InputDecoration(
                                          //     //     hintText: '2022/11/19-2022/11/22',
                                          //     //     enabled: true,
                                          //     //     suffixIcon:
                                          //     //         Icon(Icons.calendar_month),
                                          //     //   ),
                                          //     //   //onTap: () => ,
                                          //     // ),
                                          //     //DateTimePicker(),
                                          //     // Icon(
                                          //     //   Icons.date_range_rounded,
                                          //     //   color: AppStyles.mainColor,
                                          //     // ),
                                          //     // Text_widets(
                                          //     //   text: '2022/11/19 - 2022/11/22',
                                          //     //   size: 14,
                                          //     //   Colors: AppStyles.fontColor,
                                          //     //   fontWeight: FontWeight.bold,
                                          //     // )
                                          //   ],
                                          // ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 30,
                                        child: Icon(
                                          Icons.download,
                                          color:
                                              Color.fromARGB(255, 25, 83, 153),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 30,
                                        child: Icon(
                                          Icons.edit,
                                          color:
                                              Color.fromARGB(255, 25, 83, 153),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),

                        //
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            //height: 335,
                            width: 780,
                            decoration: BoxDecoration(
                                //color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 25, 83, 153),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: 'رقم الفاتوره',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text_widets(
                                        text: 'الاسم',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: 'القيمة',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text_widets(
                                        text: 'ض. مبيعات',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text_widets(
                                        text: 'ض.أ.ت.ص',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text_widets(
                                        text: 'ض.دمغة',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Text_widets(
                                        text: 'الصافي',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: 'التاريخ',
                                        Colors: Colors.white,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                //--
                                //ListView.separated(
                                //   itemBuilder: (context, index) => buildRowTable(rowTable[index]),
                                //   separatorBuilder: (context, index) => SizedBox(
                                //   height: 20.0,
                                // ),
                                //   itemCount:rowTable.length ,
                                // ),
                                //--

                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: '003',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Text_widets(
                                        text: 'مثال الاسم',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: '8.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Text_widets(
                                        text: '15',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '0.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '1.0',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11/2022 3:00',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                //--
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      //color: AppStyles.fontColor,
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: '003',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Text_widets(
                                        text: 'مثال الاسم',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: '8.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Text_widets(
                                        text: '15',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '0.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '1.0',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11/2022 3:00',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                //---
                                SizedBox(
                                  height: 20.0,
                                ),

                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: '003',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Text_widets(
                                        text: 'مثال الاسم',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: '8.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Text_widets(
                                        text: '15',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '0.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '1.0',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11/2022 3:00',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: '003',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Text_widets(
                                        text: 'مثال الاسم',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: '8.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Text_widets(
                                        text: '15',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '0.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '1.0',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11/2022 3:00',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                //---
                                SizedBox(
                                  height: 20.0,
                                ),

                                Container(
                                  width: 800,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text_widets(
                                        text: '003',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 40.0,
                                      ),
                                      Text_widets(
                                        text: 'مثال الاسم',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text_widets(
                                        text: '8.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 70.0,
                                      ),
                                      Text_widets(
                                        text: '15',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '0.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 90.0,
                                      ),
                                      Text_widets(
                                        text: '1.0',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11.5',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 60.0,
                                      ),
                                      Text_widets(
                                        text: '11/2022 3:00',
                                        Colors: Colors.black,
                                        size: 16,
                                      ),
                                    ],
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
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 12, right: 12),
            child: Expanded(
              child: Container(
                height: 55,
                // w: 370
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 19, 67, 125),
                    borderRadius: BorderRadius.circular(28)),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          //print("lll");
                          Get.off(() => HomeView());
                        },
                        icon: IconButton(
                          onPressed: () {
                            Get.off(() => HomeView());
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      Text_widets(
                        text: "التقاير اليومية",
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
        ],
      ),
    );
  }

  // Widget buildRowTable(Model data) => Container(
  //       width: 800,
  //       height: 40,
  //       decoration: BoxDecoration(
  //           color: Colors.white, borderRadius: BorderRadius.circular(5)),
  //       child: Row(
  //         children: [
  //           SizedBox(
  //             width: 10,
  //           ),
  //           Text_widets(
  //             text: '003',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 40.0,
  //           ),
  //           Text_widets(
  //             text: 'مثال الاسم',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 80.0,
  //           ),
  //           Text_widets(
  //             text: '8.5',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 70.0,
  //           ),
  //           Text_widets(
  //             text: '15',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 90.0,
  //           ),
  //           Text_widets(
  //             text: '0.5',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 90.0,
  //           ),
  //           Text_widets(
  //             text: '1.0',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 60.0,
  //           ),
  //           Text_widets(
  //             text: '11.5',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //           SizedBox(
  //             width: 60.0,
  //           ),
  //           Text_widets(
  //             text: '11/2022 3:00',
  //             Colors: Colors.black,
  //             size: 16,
  //           ),
  //         ],
  //       ),
  //     );
}
