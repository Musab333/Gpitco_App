import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/privacy_policies/Privacy_Policies_body.dart';
import 'package:gpitco/views/Profile/Profile_body.dart';
import 'package:gpitco/views/about_app/About_app_body.dart';

class About_app extends StatelessWidget {
  const About_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: About_app_body(),
    );
  }
}
