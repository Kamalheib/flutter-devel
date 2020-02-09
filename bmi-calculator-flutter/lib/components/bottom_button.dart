import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.ButtonTitle});

  final Function onTap;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            ButtonTitle,
            style: kLargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
