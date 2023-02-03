import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/account_statement/account_statement.dart';
import 'package:gpitco/views/widgets/Text_widets.dart';

import '../home/home_view.dart';

class account_statement_boday extends StatelessWidget {
  account_statement_boday({super.key});

  String htmlTable = """ 
    <head>
    <style>
          table,th,td{
               padding: 5rem;
               border: 1px solid gray; 
               text-align: center;
          }
                
     </style>
</head>
<body>
     <table style="width: 100%">
      <tr>
         <td rowspan="2"  width="20%">التاريخ

         </td> 
         <td colspan="2" width="20%">الرصيـد</td>
         <td colspan="2"  width="20%">الحركـة</td>
         <td  width="20%" rowspan="2">البيــان</td>
         <td rowspan="2"  width="12%">رقم الحركة</td>
         <td rowspan="2"  width="12%">نوع الحركة</td>

      </tr>
      <tr>
          
          <td>مدين</td>
          <td>دائن</td>
          <td>مدين</td>
           <td>دائن</td>
 
      </tr>
      <tr>
          <td class="noborder" >1/1/2022</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >رصيد مرحل</td>
          <td class="noborder" >0</td>
          <td class="noborder" >رصيد سابق</td>
      </tr>
            <tr>
          <td class="noborder" >1/1/2022</td>
          <td class="noborder" >1.00</td>
          <td class="noborder" >4.5000</td>
          <td class="noborder" >3.40</td>
          <td class="noborder" >3.550</td>
          <td class="noborder" >محول</td>
          <td class="noborder" >002</td>
          <td class="noborder" >سند قبض</td>
      </tr>
            <tr>
          <td class="noborder" >1/1/2022</td>
          <td class="noborder" >0.500</td>
          <td class="noborder" >2.400</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >12.500</td>
          <td class="noborder" >مرحل سابقا</td>
          <td class="noborder" >003</td>
          <td class="noborder" >سند دفع</td>
      </tr>
            <tr>
          <td class="noborder" >1/1/2022</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >0.500</td>
          <td class="noborder" >0.00</td>
          <td class="noborder" >رصيد</td>
          <td class="noborder" >004</td>
          <td class="noborder" >سند صرف</td>
      </tr>
            <tr>
          <td class="noborder" ></td>
          <td class="noborder" colspan="2">أجمالي الحركة</td>
          <td class="noborder" >3900</td>
          <td class="noborder" >16,000</td>
     
      </tr>
      
     </table>
</body>""";

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
                        onPressed: () => Get.off(() => HomeView()),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Text_widets(
                        text: "كشف حساب عميل",
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
            padding: const EdgeInsetsDirectional.only(top: 120),
            child: Container(
              height: 745,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(28)),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Container(
                      height: 90,
                      width: 372,
                      decoration: BoxDecoration(
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
                                    text: 'الكود',
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
                                    text: 'الاسم',
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
                                    text: '003',
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    Colors: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 12, start: 14),
                                  child: Text_widets(
                                    text: 'محمد غانم',
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    Colors: Colors.black,
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
                                    text: 'التاريخ',
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
                                    text: 'كود الحساب',
                                    size: 16,
                                    Colors: AppStyles.fontColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 15, start: 14),
                                    child: Text_widets(
                                      text: '3:00 2022/11/11',
                                      size: 16,
                                      fontWeight: FontWeight.bold,
                                      Colors: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.only(
                                        top: 12, start: 14),
                                    child: Text_widets(
                                      text: '01452',
                                      size: 16,
                                      fontWeight: FontWeight.bold,
                                      Colors: Colors.black,
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
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Expanded(
                      child: Container(
                        height: 250,
                        width: 530,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(28)),
                        child: Html(
                          data: htmlTable.toString(),
                          //tagsList: Html.tags..addAll(["bird", "flutter"]
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff184376),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "تحميل",
                                style: TextStyle(
                                  color: Color(0xff184376),
                                  fontSize: 20.0,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff184376),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "طباعة",
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
          ),
        ],
      ),
    );
  }
}
