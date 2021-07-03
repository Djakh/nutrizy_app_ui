import 'package:flutter/material.dart';

class RequestappointmentRadioContainer extends StatelessWidget {
  final String text;
  final bool boolOfRadio;
  final Function function;
  final colorOFBorder;
  final colorOFText;

  const RequestappointmentRadioContainer(
      {Key? key,
      required this.text,
      required this.boolOfRadio,
      required this.function,
      this.colorOFBorder,
      this.colorOFText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: boolOfRadio ? Colors.blueAccent : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(width: 2, color: colorOFBorder)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: boolOfRadio ? Colors.white : colorOFText,
          ),
        )),
      ),
    );
  }
}
