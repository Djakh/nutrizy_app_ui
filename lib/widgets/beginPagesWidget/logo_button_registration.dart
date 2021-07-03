import 'package:flutter/material.dart';

import '../../route.generator.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({
    Key? key,
    required this.asset,
  }) : super(key: key);
  final String asset;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: 170,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: AssetImage(asset))),
      ),
      onPressed: () { Navigator.pushNamed(context,
                                      RouteGenerator.successful_created);},
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
