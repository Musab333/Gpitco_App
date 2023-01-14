import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/home_controller.dart';
import 'package:gpitco/controllers/payment_voucher_controller.dart';
import 'package:gpitco/localization/translater.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/widgets/form_widgets.dart';

import '../../controllers/choose_language_controller.dart';
import '../../models/appdata.dart';

class AddPaymentVoucher extends StatelessWidget {
  const AddPaymentVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var items = [
    //   'Provider',
    //   'Customer',
    // ];

    return GetBuilder<PaymentVoucherCotnroller>(
        init: Get.put(PaymentVoucherCotnroller()),
        builder: (paymentVoucherCotnroller) {
          final languageKeys =
              Get.find<LanguageController>().languageKeys.data!;
          var hinTextBranch = translateKey(languageKeys.branchText!);
          // paymentVoucherCotnroller.changeBrancHinText(hinText);
          return Scaffold(
              appBar: AppBar(
                toolbarHeight: 90,
                backgroundColor: AppStyles.mainColor,
                centerTitle: true,
                title: Text(translateKey(languageKeys.bondExchangeText!)),
                elevation: 0,
              ),
              endDrawer: Drawer(),
              backgroundColor: AppStyles.mainColor,
              body: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: AppStyles.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              // Expanded(child: buildInputForm(name: "رقم السند")),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: DateTimePicker(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        filled: true,
                                        suffixIcon: Icon(Icons.calendar_month),
                                        label: Text(
                                          translateKey(languageKeys.dateText!),
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        fillColor: Colors.white),
                                    initialValue: paymentVoucherCotnroller
                                        .paymentDate
                                        .toString(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    onChanged: (val) => paymentVoucherCotnroller
                                        .changePaymentDate(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => paymentVoucherCotnroller
                                        .changePaymentDate(val),
                                  ),
                                ),
                              ),
                              Expanded(child: SizedBox()),

                              // Expanded(
                              //   child: buildInputForm(
                              //     name: "التاريخ",
                              //     suffixIcon: Icon(Icons.calendar_month),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    color: Colors.white,
                                    child: DropdownButton(
                                      underline: SizedBox(),
                                      hint: Text(paymentVoucherCotnroller
                                                  .brancHintText ==
                                              ""
                                          ? hinTextBranch
                                          : paymentVoucherCotnroller
                                              .brancHintText),
                                      borderRadius: BorderRadius.circular(50),
                                      focusColor: Colors.white,

                                      // Initial Value
                                      // value: "Type",

                                      isExpanded: true,
                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: paymentVoucherCotnroller.branches
                                          .map((Branches items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child:
                                                  Text(items.name.toString()),
                                            );
                                          })
                                          .toList()
                                          .reversed
                                          .toList(),
                                      // value: branchValue,
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (v) {
                                        paymentVoucherCotnroller
                                            .changeBrancHinText(v!.name);
                                        paymentVoucherCotnroller
                                            .changebranch(v);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 15,
                              // ),
                              // Expanded(
                              //   child: buildInputForm(
                              //       name: "الفرع",
                              //       suffixIcon: Icon(Icons.arrow_downward)),
                              // )
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 20,
                            child: Text(
                              paymentVoucherCotnroller.brancHintText == "" &&
                                      paymentVoucherCotnroller.onsaved
                                  ? translateKey(languageKeys.fieldRequired!)
                                  : "",
                              style: TextStyle(
                                  color: Theme.of(context).errorColor),
                            )),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    color: Colors.white,
                                    child: DropdownButton(
                                      hint: Text(paymentVoucherCotnroller
                                              .fundHint ??
                                          translateKey(languageKeys.fundText!)),
                                      underline: const SizedBox(),

                                      borderRadius: BorderRadius.circular(50),
                                      focusColor: Colors.white,

                                      isExpanded: true,
                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: paymentVoucherCotnroller.banks
                                          .map((Banks items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items.name.toString()),
                                        );
                                      }).toList(),
                                      onChanged: (v) {
                                        paymentVoucherCotnroller
                                            .changeFundHinText(v!.name);
                                        paymentVoucherCotnroller.changefund(v);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 20,
                            child: Text(
                              paymentVoucherCotnroller.fundHint == null &&
                                      paymentVoucherCotnroller.onsaved
                                  ? translateKey(languageKeys.fieldRequired!)
                                  : "",
                              style: TextStyle(
                                  color: Theme.of(context).errorColor),
                            )),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  children: [
                                    Text(translateKey(
                                        languageKeys.fundMovementText!)),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(translateKey(languageKeys.clientText!),
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey)),
                                  ],
                                ),
                              ),
                              // Expanded(
                              //     child: buildInputForm(
                              //   name: "نوع الحركة",
                              //   suffixIcon: Icon(Icons.arrow_downward),
                              // )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: DateTimePicker(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        filled: true,
                                        suffixIcon: Icon(Icons.calendar_month),
                                        label: Text(
                                          translateKey(languageKeys.dateText!),
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        fillColor: Colors.white),
                                    initialValue: paymentVoucherCotnroller
                                        .movementDate
                                        .toString(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2100),
                                    onChanged: (val) => paymentVoucherCotnroller
                                        .changeMovementDate(val),
                                    validator: (val) {
                                      print(val);
                                      return null;
                                    },
                                    onSaved: (val) => print(val),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    color: Colors.white,
                                    child: DropdownButton(
                                      underline: SizedBox(),

                                      borderRadius: BorderRadius.circular(50),
                                      focusColor: Colors.white,

                                      // Initial Value
                                      // value: "Type",
                                      // l: dropdownvalue ?? "select",
                                      isExpanded: true,
                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      hint: Text(paymentVoucherCotnroller
                                              .customersHint ??
                                          translateKey(
                                              languageKeys.clientNameText!)),
                                      // Array list of items
                                      items: paymentVoucherCotnroller.customers
                                          .map((CustomersGroups items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items.name.toString()),
                                        );
                                      }).toList(),
                                      onChanged: (customer) {
                                        paymentVoucherCotnroller
                                            .changeClientName(customer!);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 20,
                            child: Text(
                              paymentVoucherCotnroller.customersHint == null &&
                                      paymentVoucherCotnroller.onsaved
                                  ? translateKey(languageKeys.fieldRequired!)
                                  : "",
                              style: TextStyle(
                                  color: Theme.of(context).errorColor),
                            )),
                        SizedBox(
                          height: 50,
                          child: Row(
                            children: [
                              // Expanded(
                              //     child: buildInputForm(
                              //   name: translateKey(languageKeys.customCodeText!),
                              // )),
                              // Expanded(
                              //     child: Container(
                              //         padding: const EdgeInsets.symmetric(
                              //             horizontal: 10, vertical: 15),
                              //         height: 50,
                              //         decoration: BoxDecoration(
                              //             color: Colors.white,
                              //             borderRadius:
                              //                 BorderRadius.circular(20)),
                              //         child: Text(
                              //           paymentVoucherCotnroller.customerCode ??
                              //               translateKey(
                              //                   languageKeys.customCodeText!),
                              //         )
                              //         //  TextField(
                              //         //     onChanged: (v) => {},
                              //         //     decoration: InputDecoration(
                              //         //         border: InputBorder.none,
                              //         //         hintText: paymentVoucherCotnroller
                              //         //                 .customerCode ??
                              //         //             translateKey(languageKeys
                              //         //                 .customCodeText!),
                              //         //         fillColor: Colors.white))
                              //         )),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    color: Colors.white,
                                    child: DropdownButton(
                                      underline: SizedBox(),

                                      borderRadius: BorderRadius.circular(50),
                                      focusColor: Colors.white,

                                      // Initial Value
                                      // value: "Type",
                                      // l: dropdownvalue ?? "select",
                                      isExpanded: true,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      hint: Text(
                                        paymentVoucherCotnroller.customerCode ??
                                            translateKey(
                                                languageKeys.customCodeText!),
                                      ),
                                      items: paymentVoucherCotnroller.customers
                                          .map((CustomersGroups items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items.code.toString()),
                                        );
                                      }).toList(),
                                      onChanged: (customer) {
                                        paymentVoucherCotnroller
                                            .changeClientName(customer!);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              Expanded(
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          onChanged: (v) {
                                            paymentVoucherCotnroller
                                                .changeValue(v);
                                          },
                                          autovalidateMode:
                                              paymentVoucherCotnroller.onsaved
                                                  ? AutovalidateMode.always
                                                  : AutovalidateMode.disabled,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return translateKey(
                                                  languageKeys.fieldRequired!);
                                            }
                                          },
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: translateKey(
                                                  languageKeys.valueText!),
                                              fillColor: Colors.white)))),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 20,
                            child: Text(
                              paymentVoucherCotnroller.customerCode == null &&
                                      paymentVoucherCotnroller.onsaved
                                  ? translateKey(languageKeys.fieldRequired!)
                                  : "",
                              style: TextStyle(
                                  color: Theme.of(context).errorColor),
                            )),
                        SizedBox(
                            height: 100,
                            // child: buildInputForm(
                            //   name: translateKey(languageKeys.statementText!),
                            //   maxLines: 5,
                            // ),
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: TextFormField(
                                    maxLines: 5,
                                    autovalidateMode:
                                        paymentVoucherCotnroller.onsaved
                                            ? AutovalidateMode.always
                                            : AutovalidateMode.disabled,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return translateKey(
                                            languageKeys.fieldRequired!);
                                      }
                                    },
                                    onChanged: (v) {
                                      paymentVoucherCotnroller
                                          .changeStatement(v);
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: translateKey(
                                            languageKeys.statementText!),
                                        fillColor: Colors.white)))),
                        const SizedBox(height: 30),
                        MaterialButton(
                          onPressed: () {
                            paymentVoucherCotnroller.loading
                                ? null
                                : paymentVoucherCotnroller.submit();
                          },
                          minWidth: double.infinity,
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55)),
                          color: AppStyles.mainColor,
                          child: Text(
                            translateKey(languageKeys.addBondCashingText!),
                            style: AppStyles.bodyBoldL
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
