import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ui/app_styles.dart';
import 'Sttings_body.dart';

class Sttings extends StatelessWidget {
  const Sttings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: Sttings_body(),
    );
  }
}
