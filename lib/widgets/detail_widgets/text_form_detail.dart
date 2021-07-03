import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/shared/constants.dart';

class TextFormDetail extends StatelessWidget {
  const TextFormDetail({Key? key, required this.hint}) : super(key: key);
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      decoration: textInputDecoration.copyWith(
        hintText: hint,
      ),
    );
  }
}
