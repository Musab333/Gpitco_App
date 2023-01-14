import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/payment/Payment_voucher_body.dart';
import 'Add_supplier_body.dart';

class Add_supplier extends StatelessWidget {
  const Add_supplier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: Add_supplier_body(),
    );
  }
}
