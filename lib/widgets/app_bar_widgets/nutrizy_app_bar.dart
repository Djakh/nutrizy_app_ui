import 'package:flutter/material.dart';

class NutrizyAppBarText extends StatelessWidget {
  const NutrizyAppBarText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
         
           const Text(
              "Nutr",
              style:const TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
          const  Text(
              "izy",
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 38,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      
    );
  }
}
