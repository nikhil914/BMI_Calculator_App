import 'package:flutter/material.dart';
import 'constants.dart';

class FirstIcon extends StatelessWidget {
  FirstIcon({this.ic, this.tx});
  final IconData ic;
  final String tx;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ic,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 15.0),
        Text(
          tx,
          style: ktxTextStyle,
        )
      ],
    );
  }
}
