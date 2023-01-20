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

  var htmlData = r"""<div>
  <h1>Demo Page</h1>
  <p>This is a fantastic product that you should buy!</p>
  <h3>Features</h3>
  <ul>
    <li>It actually works</li>
    <li>It exists</li>
    <li>It doesn't cost much!</li>
  </ul>
  <!--You can pretty much put any html in here!-->
</div>""";

  /// sanitize or query document here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.mainColor,
      body: account_statement_boday(),
    );
  }
}
