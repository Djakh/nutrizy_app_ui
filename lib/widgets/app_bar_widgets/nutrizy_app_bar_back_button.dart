import 'package:flutter/material.dart';

import '../../size_config.dart';

class NutrizyAppBarBackButton extends StatelessWidget {
  const NutrizyAppBarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: SizeConfig.h * 8.5),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Nutr",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.w * 19,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "izy",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: SizeConfig.w * 19,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            left: SizeConfig.w * 5,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(SizeConfig.w * 5)),
                  child: Icon(
                    Icons.arrow_back_sharp,
                    size: SizeConfig.w * 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
