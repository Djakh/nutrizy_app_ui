import 'package:flutter/material.dart';

class ComputeCircleButton extends StatelessWidget {
  const ComputeCircleButton({ Key? key, required this.symbol, required this.function }) : super(key: key);
final String symbol;
final Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { function();},
          child: CircleAvatar(
        radius: 21,
        backgroundColor: Colors.blueAccent,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Text(symbol, style: TextStyle(color: Colors.blueAccent, fontSize: 22, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}