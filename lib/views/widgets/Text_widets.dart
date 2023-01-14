import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Text_widets extends StatelessWidget {
  final String? text;
  final Color? Colors;
  final double? size;
  final FontWeight? fontWeight;
  const Text_widets(
      {super.key, this.text, this.Colors, this.size, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: Colors!,
        fontSize: size!,
        fontWeight: fontWeight,
      ),
    );
  }
}
