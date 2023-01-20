import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/reports/Reports_body.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: const Reports_body(),
    );
  }
}
