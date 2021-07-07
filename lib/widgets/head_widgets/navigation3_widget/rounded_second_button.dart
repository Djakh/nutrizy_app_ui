import 'package:flutter/material.dart';

class RoundedSecondButton extends StatelessWidget {
  const RoundedSecondButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 45,
      color: Colors.white,
      
      minWidth: 80,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          'View Details',
          style: TextStyle(color: Colors.black, fontSize: 18,),
        ),
      ),
      
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          )),
    );
  }
}