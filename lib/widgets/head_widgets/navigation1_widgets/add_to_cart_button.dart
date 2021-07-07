import 'package:flutter/material.dart';


class AddToCartButton extends StatelessWidget {
  
final String text;
final Function function;
final  bool myBool;
  const AddToCartButton({Key? key, required this.text, required this.function, required this.myBool}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return FlatButton(
      height: 47,
      color: myBool ? Colors.white : Colors.blueAccent,
      minWidth: 80,
      onPressed: () {function();},
      child: Text(
        text,
        style:  TextStyle(color: myBool ? Colors.blueAccent : Colors.white, fontSize: 20),
      ),
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            color: Colors.blueAccent,
            width: 2,
          )),
    );
  }
}
