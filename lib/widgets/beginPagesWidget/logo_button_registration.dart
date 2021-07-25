import 'package:flutter/material.dart';

import '../../route.generator.dart';
import '../../size_config.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({
    Key? key,
    required this.asset,
  }) : super(key: key);
  final String asset;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        height: SizeConfig.h * 25,
        minWidth: double.infinity,
        child: Container(
          height: SizeConfig.h * 10,
          width: SizeConfig.w * 10,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth, image: AssetImage(asset))),
        ),
        onPressed: () { Navigator.pushNamed(context,
                                        RouteGenerator.successful_created);},
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(SizeConfig.w * 25)),
      ),
    );
  }
}
