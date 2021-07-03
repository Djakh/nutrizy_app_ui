import 'package:flutter/material.dart';

class TextButtonPages extends StatelessWidget {
  final Function function;
  final colors;
  final String text;
  final double size;
  const TextButtonPages(
      {Key? key,
      required this.function,
      required this.colors,
      required this.text, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: () {function();},
        child: Text(
          text,
          style: TextStyle(fontSize: size, color: colors),
        ));
  }
}
