import 'package:flutter/material.dart';

class AnalyticsImageCard extends StatelessWidget {
  const AnalyticsImageCard({Key? key, required this.myImage}) : super(key: key);
  final String myImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Card(
        elevation: 0,
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              image:
                  DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(myImage))),
        ),
      ),
    );
  }
}
