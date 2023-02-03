import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gpitco/utils/ui/app_styles.dart';
import 'package:gpitco/views/account_statement/account_statement_boday.dart';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart' as dom;

class Accountstatement extends StatelessWidget {
  Accountstatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: account_statement_boday(),
    );
  }
}
