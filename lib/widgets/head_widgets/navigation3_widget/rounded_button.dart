import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.side,
      required this.buttonColor,
      required this.textColor,
      })
      : super(key: key);
  final String text;
  final BorderSide side;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 45,
      minWidth: 125,
      color: buttonColor,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 18,),
        ),
      ),
      shape: RoundedRectangleBorder(
        side: side,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
