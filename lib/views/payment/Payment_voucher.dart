import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/payment/Payment_voucher_body.dart';

class Payment_voucher extends StatelessWidget {
  const Payment_voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: Payment_voucher_body(),
    );
  }
}
