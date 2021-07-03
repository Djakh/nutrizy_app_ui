import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  
final bool isActive;
const SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 10),
    height: isActive? 7 : 5,
    width: isActive? 38 : 14,

    decoration: BoxDecoration(
      color: isActive? Colors.green[400] : Colors.green[100],
      borderRadius:  BorderRadius.circular(12)),
      
    );
  }
}
