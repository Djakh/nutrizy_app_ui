import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 45,
      color: Colors.blueAccent[700],
      minWidth: 80,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Text(
          'Join Chat',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
         ),
    );
  }
}