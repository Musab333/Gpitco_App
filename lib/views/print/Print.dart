import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/print/Print_body.dart';

class Print extends StatelessWidget {
  const Print({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: const Print_body(),
    );
  }
}
