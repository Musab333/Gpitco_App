import 'dart:ui';
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

import '../ui/app_styles.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({Key? key}) : super(key: key);

  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  double? _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var calc = SimpleCalculator(
      value: _currentValue!,
      hideExpression: false,
      hideSurroundingBorder: true,
      autofocus: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
        if (kDebugMode) {
          print('$key\t$value\t$expression');
        }
      },
      onTappedDisplay: (value, details) {
        if (kDebugMode) {
          print('$value\t${details.globalPosition}');
        }
      },
      theme: const CalculatorThemeData(
        borderColor: Colors.white,
        borderWidth: 2,
        displayColor: Colors.white,
        displayStyle: TextStyle(
          fontSize: 80,
          color: AppStyles.mainColor,
        ),
        expressionColor: Colors.indigo,
        expressionStyle: TextStyle(fontSize: 20, color: Colors.white),
        operatorColor: AppStyles.mainColor,
        operatorStyle: TextStyle(fontSize: 30, color: Colors.white),
        commandColor: Colors.orange,
        commandStyle: TextStyle(fontSize: 30, color: Colors.white),
        numColor: Colors.grey,
        numStyle: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      //---> Cal
      child: IconButton(
        onPressed: () {
          {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.70,
                  child: calc,
                );
              },
            );
          }
          ;
          //print('Cal');
        },
        icon: const Icon(
          Icons.calculate,
          size: 30,
          color: AppStyles.mainColor,
        ),
      ),
    );
  }
}
