import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({ Key? key, required this.string, required this.iconOf, required this.color }) : super(key: key);
final String string;
final iconOf;
final color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 40,
          width: 37,
          decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
          child: iconOf,
        ),
        SizedBox(width: 13),
        Text(string, style: TextStyle(fontSize: 17, color: Colors.black),)
      ],
    );
  }
}
