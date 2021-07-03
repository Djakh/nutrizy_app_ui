import 'package:flutter/material.dart';


class RoundedStretchButton extends StatelessWidget {
  
  final color;
  final String text;
  final Function function;
  const RoundedStretchButton({Key? key, required this.color, required this.text, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: double.infinity,
      color: color,
      onPressed: () {function();} ,
      child: Text(
       text,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(50)),
    );
  }
}
