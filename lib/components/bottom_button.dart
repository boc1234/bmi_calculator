import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
   BottomButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });
  final String buttonTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => ResultPage()));

      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}