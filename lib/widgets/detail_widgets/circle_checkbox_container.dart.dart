import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class CircleCheckboxContainer extends StatelessWidget {
  const CircleCheckboxContainer({
    Key? key,
    required this.description,
    required this.amount,
    required this.color,
    required this.isMultipleColor,
  }) : super(key: key);
  final String description;
  final String amount;
  final color;
  final bool isMultipleColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: isMultipleColor
          ? BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: color),
              borderRadius: const BorderRadius.all(Radius.circular(20)))
          : BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 5),
              Text(amount,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold))
            ]),
            CircleAvatar(
              
              backgroundColor: Colors.white,
              radius: 22,
              child: RoundCheckBox(
                borderColor: Colors.white,
                size: 27,
                onTap: (bool? selected) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
