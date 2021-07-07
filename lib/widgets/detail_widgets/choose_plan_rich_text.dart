import 'package:flutter/material.dart';

class ChoosePlanRichText extends StatelessWidget {
  const ChoosePlanRichText({
    Key? key, required this.firstText, required this.secondText, required this.textStyle,required this.mySize,
  }) : super(key: key);
final String firstText;
final String secondText;
final TextStyle textStyle; 
final double mySize;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          height: 1.5,
          fontSize: mySize,
          color: Colors.grey[800],
        ),
        children: <TextSpan>[
           TextSpan(
              text:
                 firstText),
          TextSpan(
              text: secondText,
              style:textStyle
              ),
        ],
      ),
    );
  }
}
