import 'package:flutter/material.dart';

class RoundedBorderStretchButton extends StatelessWidget {
  
final String text;
final Function function;
  const RoundedBorderStretchButton({Key? key, required this.text, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: double.infinity,
      onPressed: () {function();},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            color: Colors.black,
            width: 2,
          )),
    );
  }
}

