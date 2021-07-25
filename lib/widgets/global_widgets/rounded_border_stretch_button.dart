import 'package:flutter/material.dart';

import '../../size_config.dart';

class RoundedBorderStretchButton extends StatelessWidget {
  final String text;
  final Function function;
  const RoundedBorderStretchButton(
      {Key? key, required this.text, required this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: SizeConfig.h * 28.5,
      minWidth: double.infinity,
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: SizeConfig.w * 10),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.w * 25),
          side: const BorderSide(
            color: Colors.black,
            width: 2,
          )),
    );
  }
}
