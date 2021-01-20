import 'package:flutter/material.dart';
import 'package:flutter_app/components/bottom_button.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kDMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kDMIBodyStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            text: 'Re-calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
