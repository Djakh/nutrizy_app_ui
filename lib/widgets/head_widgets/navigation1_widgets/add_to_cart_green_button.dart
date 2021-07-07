import 'package:flutter/material.dart';

class AddToCartGreenButton extends StatelessWidget {
  const AddToCartGreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      color: Colors.green[600],
      minWidth: 80,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Add to cart',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
         ),
    );
  }
}
