import 'package:flutter/material.dart';
import '../../route.generator.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 18),
        child: Column(
          children: [
            RoundedStretchButton(
                color: Colors.green[600],
                text: "I am a Nutritionist",
                function: () => {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.sign_in_or_register_page)
                    }),
            const SizedBox(height: 20),
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
