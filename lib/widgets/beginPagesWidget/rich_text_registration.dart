import 'package:flutter/material.dart';

import '../../size_config.dart';

class RichTextRegistration extends StatelessWidget {
  const RichTextRegistration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: SizeConfig.w * 9.0,
          color: Colors.grey[800],
        ),
        children: <TextSpan>[
          const TextSpan(
              text: "By continuing you agree Nutrizy`s "),
          const TextSpan(
              text: "Terms of Services &  Privacy Polisy",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
