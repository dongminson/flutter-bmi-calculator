// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_bmi_calculator/components/bottom_button.dart';
import 'package:flutter_bmi_calculator/components/card_wrapper.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.result,
      required this.textResult});

  final String bmiResult;
  final String result;
  final String textResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: topNavBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: CardWrapper(
                color: activeCardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        result.toUpperCase(),
                        style: resultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: numberResultTextStyle,
                      ),
                      Text(
                        textResult,
                        textAlign: TextAlign.center,
                        style: bodyTextStyle,
                      )
                    ]),
                onPress: () {},
              )),
          BottomButton(
              buttonTitle: 'GO BACK',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
