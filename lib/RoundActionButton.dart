import 'package:flutter/material.dart';

class RoundActioButton extends StatelessWidget {
  RoundActioButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 46,
        height: 46,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
