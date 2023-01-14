import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/privacy_policies/Privacy_Policies_body.dart';
import 'package:gpitco/views/Profile/Profile_body.dart';

class Privacy_Policies extends StatelessWidget {
  const Privacy_Policies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: Privacy_Policies_body(),
    );
  }
}
