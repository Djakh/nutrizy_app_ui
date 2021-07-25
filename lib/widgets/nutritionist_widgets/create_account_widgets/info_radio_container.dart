import 'package:flutter/material.dart';

class InforRadioContainer extends StatelessWidget {
  final String text;
  final bool boolOfRadio;
  final Function function;

  const InforRadioContainer(
      {Key? key,
      required this.text,
      required this.boolOfRadio,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: 45,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(
                width: 2,
                color: boolOfRadio ? Colors.blueAccent : Colors.white)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
        )),
      ),
    );
  }
}
