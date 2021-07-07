import 'package:flutter/material.dart';

class GoldButton extends StatelessWidget {
  const GoldButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
    height: 30,
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.red, Colors.yellowAccent]),
      ),
      child: FlatButton(
        
        onPressed: () {},
        child: Text("Gold Package",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
    );
  }
}
