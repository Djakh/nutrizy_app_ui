import 'package:flutter/material.dart';

class RadioContainer extends StatelessWidget {
    

final String text;
final bool boolOfRadio;
final Function function;

  const RadioContainer({Key? key, required this.text, required this.boolOfRadio,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        
        height: 60,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(13)),
            border: Border.all(
              width: 2,
                color: boolOfRadio
                    ? Colors.green
                    : Colors.white)),
                    child: Center(child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),)),
                    
      ),
    );
  }
}