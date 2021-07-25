import 'package:flutter/material.dart';

import '../../size_config.dart';

class NutrizyAppBarText extends StatelessWidget {
  const NutrizyAppBarText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:  EdgeInsets.only(top: SizeConfig.h * 10),
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
              style:  TextStyle(
                  color: Colors.green,
                  fontSize: SizeConfig.w * 19,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      
    );
  }
}
