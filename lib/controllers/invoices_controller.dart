import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/invoice_request.dart';
import '../models/purchase_request.dart';
import '../utils/helpers/url.dart';
import 'login_controller.dart';

class InvoicesCotnroller extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  bool loading = false;
  bool isError = false;
  bool isError2 = false;

  final token = Get.find<LoginController>().user!.data!.token!;

  InvoiceResponse? salesInovice;
  PurchaseResponse? purchasesInovice;

  void changeLoader() {
    loading = !loading;
    update();
  }

// get_invoices
  Future<void> getInvoices() async {
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json",
        'Authorization': 'Bearer $token'
      };
      var urlCalling = Url.salesBills;
      var url = Uri.parse(urlCalling);
      if (kDebugMode) {
        print("reatching :: $urlCalling");
      }
      // changeLoader();
      final response = await http.get(url, headers: headers);
      if (kDebugMode) {
        print("requested Token :: $token");
        print("the response ${response.body}");
      }

      if (response.statusCode == 200) {
        salesInovice = InvoiceResponse.fromJson(json.decode(response.body));

        update();
      } else {
        isError = true;
        update();
        // Fluttertoast.showToast(
        //     msg: jsonDecode(response.body)["message"] ?? "Unknown Error Occred",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
      }
    } catch (e) {
      if (kDebugMode) {
        print("the error $e");
      }
      isError = true;
      update();
      // Fluttertoast.showToast(
      //     msg: "Unknown Error Occred",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
    // changeLoader();
  }

//purshase invoice
  Future<void> getInvoicesPurshase() async {
    try {
      var headers = {
        "Content-type": "application/json",
        "Accept": "application/json",
        'Authorization': 'Bearer $token'
      };
      var urlCalling = Url.purchases;
      var url = Uri.parse(urlCalling);
      if (kDebugMode) {
        print("reatching :: $urlCalling");
      }
      // changeLoader();
      final response = await http.get(url, headers: headers);
      if (kDebugMode) {
        print("requested Token :: $token");
        print("the response ${response.body}");
      }

      if (response.statusCode == 200) {
        purchasesInovice =
            PurchaseResponse.fromJson(json.decode(response.body));
        if (kDebugMode) {
          print("the purshase :::${purchasesInovice!.data![0].empName}");
        }

        update();
      } else {
        if (kDebugMode) {
          print(
              '${jsonDecode(response.body)["message"] ?? "Unknown Error Occred"}');
        }
        isError2 = true;
        update();
        // Fluttertoast.showToast(
        //     msg: jsonDecode(response.body)["message"] ?? "Unknown Error Occred",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
      }
    } catch (e) {
      if (kDebugMode) {
        print("the error $e");
        isError2 = true;
        update();
      }
      if (kDebugMode) {
        print("Unknown Error Occred");
      }
      // Fluttertoast.showToast(
      //     msg: "Unknown Error Occred",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
    // changeLoader();
  }

  Future<void> callBoth() async {
    changeLoader();
    await getInvoices();
    await getInvoicesPurshase();
    changeLoader();
  }

  @override
  void onInit() {
    callBoth();
    tabController = TabController(length: 2, vsync: this);
  }
}
