import 'package:flutter/material.dart';

class ChoosePlanRichText extends StatelessWidget {
  const ChoosePlanRichText({
    Key? key, required this.firstText, required this.secondText, required this.textStyle,
  }) : super(key: key);
final String firstText;
final String secondText;
final TextStyle textStyle; 
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          height: 1.5,
          fontSize: 15.0,
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
