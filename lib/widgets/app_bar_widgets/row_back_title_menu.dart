import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';

class RowBackTitleIcon extends StatelessWidget {
  const RowBackTitleIcon({Key? key, required this.iconOf, required this.text, required this.mySize,})
      : super(key: key);
  final iconOf;
  final String text;
  final double mySize;
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
                      size: mySize,
                      color: Colors.black,
                    ),
                    function: () {
                      Navigator.pop(context);
                    }))),
        Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                
                Text(
                  text,
                  style:
                      TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Expanded(child: Align(alignment: Alignment.centerRight, child: iconOf)),
      ],
    );
  }
}
