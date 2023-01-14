import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:gpitco/controllers/home_controller.dart';
import 'package:http/http.dart' as http;

import '../localization/translater.dart';
import '../models/appdata.dart';
import '../models/cab_bond.dart';
import '../models/cab_recieved.dart';
import '../utils/helpers/url.dart';
import '../views/bond_catch/bond_catch_result.dart';
import '../views/payment_voucher/result_view.dart';
import 'login_controller.dart';
import 'splash_controller.dart';

class BondCatchController extends GetxController {
  bool loading = false;
  bool onsaved = false;
  final token = Get.find<LoginController>().user!.data!.token!;
  final branches = Get.find<HomeCotnroller>().appdata!.data.branches;
  final banks = Get.find<HomeCotnroller>().appdata!.data.banks;
  final customers = Get.find<HomeCotnroller>().appdata!.data.customersGroups;

  Branches? branch;
  String brancHintText = "";
  String? fundHint;

  String? customerCode;
  var paymentDate = DateTime.now();

  Banks? _fund;
  int _fundMovement = 0;
  var movementDate = DateTime.now();
  String _clientName = '';
  String _customerCode = "";
  String? _value = "";
  String _statement = "";
  String? customersHint;
  CabBond? result;

  changeloading() {
    loading = !loading;
    update();
  }

  changePaymentDate(v) {
    paymentDate = v;
    update();
  }

  changeBrancHinText(v) {
    brancHintText = v;
    update();
  }

  changeFundHinText(v) {
    fundHint = v;
    update();
  }

  changebranch(v) {
    branch = v;
    update();
  }

  changefund(v) {
    _fund = v;
    update();
  }

  changefudmovement(v) {
    _fundMovement = v;
    update();
  }

  changeMovementDate(v) {
    movementDate = v;
    update();
  }

  changeClientName(CustomersGroups v) {
    _clientName = v.name;
    customersHint = v.name;
    customerCode = v.code;
    update();
  }

  changeCustomerCode(v) {
    _customerCode = v;
    update();
  }

  changeValue(v) {
    _value = v;
    update();
  }

  changeStatement(v) {
    _statement = v;
    update();
  }

//submitting payment fields

  Future<void> submit() async {
    onsaved = true;
    print("$onsaved ::: done");
    update();
    final token = Get.find<LoginController>().user!.data!.token;
    if (kDebugMode) {
      print("Token ::: $token");
      print(
          "$paymentDate ::: ${branch!.id} ::: ${_fund!.id} ::: $customerCode");
    }
    if (paymentDate != "" &&
        _value != "" &&
        branch!.id != null &&
        _fund!.id != null &&
        customerCode != "") {
      print("here we are submitting");
      try {
        var headers = {
          "Content-type": "application/json",
          "Accept": "application/json",
          'Authorization': 'Bearer $token'
        };
        var url = Uri.parse(Url.cabPayments);
        if (kDebugMode) {
          print("reatching :: ${Url.cabPayments}");
        }
        final data = {
          "type": "0",
          "person_id": customerCode,
          "date": paymentDate.toString(),
          "amount": double.parse(_value!).toString(),
          "branch_id": branch!.id,
          "bank_id": _fund!.id
        };
        changeloading();
        EasyLoading.show();

        final response =
            await http.post(url, body: json.encode(data), headers: headers);
        EasyLoading.dismiss();

        if (kDebugMode) {
          print("the response ${response.body}");
          print("the statuscode :::: ${response.statusCode}");
        }

        if (response.statusCode == 201) {
          result = CabBond.fromJson(json.decode(response.body));
          update();

          Get.to(() => CabCatchResultView(
                result: result!,
              ));
        } else {
          Fluttertoast.showToast(
              msg: jsonDecode(response.body)["message"] ??
                  "Unknown Error Occred",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      } catch (e) {
        if (kDebugMode) {
          print("the error :: $e");
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
      changeloading();
      EasyLoading.dismiss();
    }
  }
// brach menu

  @override
  void onInit() {}
}
