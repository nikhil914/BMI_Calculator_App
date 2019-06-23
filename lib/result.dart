import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/Reusable_card.dart';
import 'BottomButton.dart';

class Result extends StatelessWidget {
  Result({this.bmiresult, this.interpretation, this.resulttext});
  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kLargeResultText,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kallColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toUpperCase(),
                      style: kresultgtext,
                    ),
                    Text(
                      bmiresult,
                      style: kBMItext,
                    ),
                    Text(
                      interpretation,
                      style: kbodytextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttontitle: "Re-Calculate",
              ontap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
