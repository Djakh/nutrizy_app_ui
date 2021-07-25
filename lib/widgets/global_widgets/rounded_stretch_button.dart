import 'package:flutter/material.dart';

import '../../size_config.dart';


class RoundedStretchButton extends StatelessWidget {
  
  final color;
  final String text;
  final Function function;
  const RoundedStretchButton({Key? key, required this.color, required this.text, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: SizeConfig.h * 25,
      minWidth: double.infinity,
      color: color,
      onPressed: () {function();} ,
      child: Text(
       text,
        style:  TextStyle(color: Colors.white, fontSize: SizeConfig.w * 10),
      ),
      shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(SizeConfig.w * 25)),
    );
  }
}
