import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttontitle, this.ontap});
  final String buttontitle;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: kbottomColor,
        margin: EdgeInsets.only(top: 1),
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttontitle,
            style: kLargeButton,
          ),
        ),
        width: double.infinity,
        height: kbottomHeight,
      ),
    );
  }
}
