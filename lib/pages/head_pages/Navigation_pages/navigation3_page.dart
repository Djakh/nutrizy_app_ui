import 'package:flutter/material.dart';

class Navigation3Page extends StatelessWidget {
  const Navigation3Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Navigation3Page"),
    );
  }
}

class Navigation3AppBar extends StatelessWidget {
  const Navigation3AppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
    );
  }
}
