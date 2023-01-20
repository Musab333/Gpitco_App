import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/ui/app_styles.dart';
import 'Supporting_body.dart';

class Supporting extends StatefulWidget {
  const Supporting({super.key});

  @override
  State<Supporting> createState() => _SupportingState();
}

class _SupportingState extends State<Supporting> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: const Supporting_body(),
    );
  }
}
