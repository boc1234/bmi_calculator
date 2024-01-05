import 'package:bmi_calculator/arguments/ResultData.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({super.key,});
  // required this.bmiResult,required this.resulText,required this.interpretation
  // String bmiResult;
  // String resulText;
  // String interpretation;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultDate;

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    args.resulText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,

                  )
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: "Re-Calculator",onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
