import 'package:flutter/material.dart';

class GestureArrowButton extends StatelessWidget {
  const GestureArrowButton({ Key? key,required this.function,required this.iconOf }) : super(key: key);
final Function function;
final iconOf;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {function();},
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: iconOf 
                ),
              );
  }
}