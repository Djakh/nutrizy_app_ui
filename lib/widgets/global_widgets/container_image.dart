import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  
  final double height;
  final double width;
  final String asset;

  const ContainerImage({Key? key, required this.height, required this.width, required this.asset,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: height,
        width: width,
        decoration:  BoxDecoration(
          image:  DecorationImage(
              image: AssetImage(asset)),
        ));
  }
}