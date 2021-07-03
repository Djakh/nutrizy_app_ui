import 'package:flutter/material.dart';

class Navigation2Page extends StatelessWidget {
  const Navigation2Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Navigation2Page"),
    );
  }
}

class Navigation2AppBar extends StatelessWidget {
  const Navigation2AppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
    );
  }
}
