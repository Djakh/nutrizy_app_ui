import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';

class RowBackTitleIcon extends StatelessWidget {
  const RowBackTitleIcon({Key? key, required this.iconOf, required this.text})
      : super(key: key);
  final iconOf;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: GestureArrowButton(
                    iconOf: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.black,
                    ),
                    function: () {
                      Navigator.pop(context);
                    }))),
        Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
        Expanded(child: Align(alignment: Alignment.centerRight, child: iconOf)),
      ],
    );
  }
}
