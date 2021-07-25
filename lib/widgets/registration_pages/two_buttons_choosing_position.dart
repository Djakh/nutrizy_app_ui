import 'package:flutter/material.dart';
import '../../route.generator.dart';
import '../../size_config.dart';
import '../global_widgets/rounded_border_stretch_button.dart';
import '../global_widgets/rounded_stretch_button.dart';

class TwoButtonsChoosingPosition extends StatelessWidget {
  const TwoButtonsChoosingPosition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.w * 2.5, vertical: SizeConfig.h * 9),
        child: Column(
          children: [
            RoundedStretchButton(
                color: Colors.green[600],
                text: "I am a Nutritionist",
                function: () => {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.sign_in_or_register_page)
                    }),
             SizedBox(height: SizeConfig.h * 10),
            RoundedBorderStretchButton(
              text: "I am Searching for Doctor",
              function: () {
                Navigator.pushNamed(context, RouteGenerator.sign_in);
              },
            ),
          ],
        ),
      ),
    );
  }
}
