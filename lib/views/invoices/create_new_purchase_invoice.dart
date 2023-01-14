import 'package:flutter/material.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/utils/ui/constants.dart';
import 'package:gpitco/views/widgets/form_widgets.dart';

import '../home/home_view.dart';

class CreateNewPurchaseInvoice extends StatelessWidget {
  CreateNewPurchaseInvoice({Key? key}) : super(key: key);
  bool isTaxExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 90,
          backgroundColor: AppStyles.mainColor,
          centerTitle: true,
          title: Text("فاتورة المشتريات"),
          elevation: 0,
        ),
        backgroundColor: AppStyles.mainColor,
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppStyles.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
// Initial Value
                        isDense: true,
                        underline: SizedBox(),
                        value: "نقدي",
                        borderRadius: BorderRadius.circular(10),
// Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
// Array list of items
                        items: ["نقدي", "آجل"].map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: AppStyles.bodyBoldL
                                  .copyWith(color: AppStyles.mainColor),
                            ),
                          );
                        }).toList(),
// After selecting the desired option,it will
// change button value to selected value
                        onChanged: (String? newValue) {},
                      ),
                    ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            hintText: "أدخل الكود",
                            suffixIcon: Container(
                              width: 80,
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5, bottom: 5),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    VerticalDivider(
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.search,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code,
                          color: AppStyles.mainColor,
                          size: 30,
                        )),
                    // const SizedBox(width: 5),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.bookmarks_outlined,
                    //       color: AppStyles.mainColor,
                    //       size: 30,
                    //     )),
                    // const SizedBox(width: 5),
                    // IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.add_box_rounded,
                    //       color: Colors.green,
                    //       size: 30,
                    //     ))
                  ],
                ),
                const SizedBox(height: 10),
                const InvoiceItem(
                  title: "إسم الصنف",
                  value: "تويوتا",
                ),
                const Divider(),
                const InvoiceItem(
                  title: "رقم الصنف",
                  value: "3434-Fg",
                ),
                const Divider(),
                const SizedBox(height: 8),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الوحدة",
                      style: AppStyles.bodyBoldL
                          .copyWith(color: AppStyles.mainTextColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
// Initial Value
                        isDense: true,
                        underline: SizedBox(),
                        value: "عملية",
                        borderRadius: BorderRadius.circular(10),
// Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),
// Array list of items
                        items: ["عملية", "تست"].map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
// After selecting the desired option,it will
// change button value to selected value
                        onChanged: (String? newValue) {},
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                        width: 50,
                        height: 30,
                        child: NumberTextField(
                          contentPadding: EdgeInsets.only(top: 5),
                        )),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "الخصم",
                      style: AppStyles.bodyBoldL
                          .copyWith(color: AppStyles.mainTextColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 70,
                      height: 30,
                      child: buildInputForm(name: "", maxLines: 1),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "%",
                      style: AppStyles.bodyBoldL
                          .copyWith(color: AppStyles.mainTextColor),
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(height: 8),
                StatefulBuilder(builder: (context, state) {
                  return ExpansionPanelList(
                      expandedHeaderPadding: EdgeInsets.zero,
                      expansionCallback: (int index, bool isExpanded) {
                        state(() {
                          isTaxExpanded = !isExpanded;
                        });
                      },
                      children: [
                        ExpansionPanel(
                            backgroundColor: AppStyles.selectionColor,
                            headerBuilder: (context, isExpanded) {
                              return Container(
                                // width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Text(
                                  "الضريبة",
                                  style: AppStyles.bodyBoldL.copyWith(
                                    color: AppStyles.mainTextColor,
                                  ),
                                ),
                              );
                            },
                            body: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      activeColor: AppStyles.mainColor,
                                      value: "1",
                                      groupValue: "1",
                                      onChanged: (v) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ضريبة الصادرات",
                                      style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      activeColor: AppStyles.mainColor,
                                      value: "2",
                                      groupValue: "1",
                                      onChanged: (v) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ضريبة للمواطنين",
                                      style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      activeColor: AppStyles.mainColor,
                                      value: "1",
                                      groupValue: "3",
                                      onChanged: (v) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ضريبة المبيعات المعفاة",
                                      style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      activeColor: AppStyles.mainColor,
                                      value: "1",
                                      groupValue: "4",
                                      onChanged: (v) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ضريبة خاضعة للنسبة الأساسية",
                                      style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: const VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      activeColor: AppStyles.mainColor,
                                      value: "1",
                                      groupValue: "5",
                                      onChanged: (v) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ضريبة خاضعة للنسبة الصفرية",
                                      style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.restart_alt),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: AppStyles.mainColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text(
                                        "إضافة",
                                        style: AppStyles.bodyBoldL
                                            .copyWith(color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                            ),
                            isExpanded: isTaxExpanded),
                      ]);
                }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: StatefulBuilder(builder: (context, state) {
                        return ExpansionPanelList(
                            expandedHeaderPadding: EdgeInsets.zero,
                            expansionCallback: (int index, bool isExpanded) {
                              state(() {
                                isTaxExpanded = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                  backgroundColor: AppStyles.selectionColor,
                                  headerBuilder: (context, isExpanded) {
                                    return Container(
                                      // width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "المجموعة",
                                        style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor,
                                        ),
                                      ),
                                    );
                                  },
                                  body: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "1",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة الصادرات",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "2",
                                            groupValue: "1",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة للمواطنين",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "3",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة المبيعات المعفاة",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "4",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة خاضعة للنسبة الأساسية",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "5",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة خاضعة للنسبة الصفرية",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.restart_alt),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          MaterialButton(
                                            onPressed: () {},
                                            color: AppStyles.mainColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Text(
                                              "إضافة",
                                              style: AppStyles.bodyBoldL
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                  isExpanded: isTaxExpanded),
                            ]);
                      }),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: StatefulBuilder(builder: (context, state) {
                        return ExpansionPanelList(
                            expandedHeaderPadding: EdgeInsets.zero,
                            expansionCallback: (int index, bool isExpanded) {
                              state(() {
                                isTaxExpanded = !isExpanded;
                              });
                            },
                            children: [
                              ExpansionPanel(
                                  backgroundColor: AppStyles.selectionColor,
                                  headerBuilder: (context, isExpanded) {
                                    return Container(
                                      // width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Text(
                                        "الفئة",
                                        style: AppStyles.bodyBoldL.copyWith(
                                          color: AppStyles.mainTextColor,
                                        ),
                                      ),
                                    );
                                  },
                                  body: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "1",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة الصادرات",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "2",
                                            groupValue: "1",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة للمواطنين",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "3",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة المبيعات المعفاة",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "4",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة خاضعة للنسبة الأساسية",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            activeColor: AppStyles.mainColor,
                                            value: "1",
                                            groupValue: "5",
                                            onChanged: (v) {},
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ضريبة خاضعة للنسبة الصفرية",
                                            style: AppStyles.bodyBoldL.copyWith(
                                                color: AppStyles.mainTextColor),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.restart_alt),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          MaterialButton(
                                            onPressed: () {},
                                            color: AppStyles.mainColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Text(
                                              "إضافة",
                                              style: AppStyles.bodyBoldL
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                  isExpanded: isTaxExpanded),
                            ]);
                      }),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                    height: 55,
                    minWidth: deviceWidth(context) - 100,
                    child: Text(
                      "أضف صنف",
                      style: AppStyles.bodyBoldL.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: AppStyles.mainColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "إسم الصنف",
                            style: AppStyles.bodyBoldL
                                .copyWith(color: AppStyles.mainTextColor),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Text(
                            "الوحدات",
                            style: AppStyles.bodyBoldL
                                .copyWith(color: AppStyles.mainTextColor),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      InvoiceTypeItem(
                        name: "سيارة فولفو",
                        qty: "14",
                        onPressed: () {},
                      ),
                      const SizedBox(height: 15),
                      InvoiceTypeItem(
                        name: "سيارة هوندا",
                        qty: "23",
                        onPressed: () {},
                      ),
                      const SizedBox(height: 15),
                      InvoiceTypeItem(
                        name: "سيارة ميرسد",
                        qty: "1",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "المجموع",
                            style: AppStyles.bodyMediumXL
                                .copyWith(color: AppStyles.mainColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "sar",
                                style: AppStyles.bodyBoldS
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "25,000",
                                style: AppStyles.bodyBoldXL
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الضريبة",
                            style: AppStyles.bodyMediumXL
                                .copyWith(color: AppStyles.mainColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "sar",
                                style: AppStyles.bodyBoldS
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "1,500",
                                style: AppStyles.bodyBoldXL
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الخصم",
                            style: AppStyles.bodyMediumXL
                                .copyWith(color: AppStyles.mainColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "sar",
                                style: AppStyles.bodyBoldS
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "2,500",
                                style: AppStyles.bodyBoldXL
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "الصافي",
                            style: AppStyles.bodyMediumXL
                                .copyWith(color: AppStyles.mainColor),
                          ),
                          Row(
                            children: [
                              Text(
                                "sar",
                                style: AppStyles.heading6
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "23,000",
                                style: AppStyles.bodyBoldXL
                                    .copyWith(color: AppStyles.mainColor),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "ملاحظات",
                  style: AppStyles.heading5,
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى.",
                  ),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55),
                  ),
                  height: 55,
                  minWidth: double.infinity,
                  child: Text(
                    "إنشاء الفاتورة",
                    style: AppStyles.bodyBoldL.copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}

class InvoiceTypeItem extends StatelessWidget {
  const InvoiceTypeItem({
    Key? key,
    this.name,
    this.qty,
    this.onPressed,
  }) : super(key: key);
  final String? name;
  final String? qty;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppStyles.seconderyColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            "$name",
            style: AppStyles.bodyBoldL.copyWith(color: AppStyles.mainColor),
          ),
          const SizedBox(
            width: 80,
          ),
          Expanded(
            child: Text(
              "$qty",
              style: AppStyles.bodyBoldL.copyWith(color: AppStyles.mainColor),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          IconButton(
            padding: const EdgeInsets.all(1),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            onPressed: onPressed,
            icon: const Icon(
              Icons.close,
              color: AppStyles.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
