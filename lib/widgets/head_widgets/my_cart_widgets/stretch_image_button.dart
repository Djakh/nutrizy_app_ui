import 'package:flutter/material.dart';

class StretchImageButton extends StatelessWidget {
  final color;
  final String text;
  final Function function;
  const StretchImageButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: double.infinity,
      color: color,
      onPressed: () {
        function();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/P.png")))),
                  SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    );
  }
}
