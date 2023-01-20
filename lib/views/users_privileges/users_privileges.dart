import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ui/app_styles.dart';
import 'Users_Privileges_body.dart';

class Users_Privileges extends StatelessWidget {
  const Users_Privileges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: const Users_Privileges_body(),
    );
  }
}
