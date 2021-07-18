import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:nutrizy_app_ui/shared/constants.dart';

class TextFormVerifyMobile extends StatefulWidget {
  const TextFormVerifyMobile(
      {Key? key, })
      : super(key: key);

  @override
  _TextFormVerifyMobileState createState() => _TextFormVerifyMobileState();
}

class _TextFormVerifyMobileState extends State<TextFormVerifyMobile> {
   final _verificationController = TextEditingController();
var maskFormatter = new MaskTextInputFormatter(mask: '#    -     #     -     #     -     #', );

  @override
  Widget build(
    BuildContext context,
  ) {
    return  TextFormField(
             obscureText: false,
            keyboardType: TextInputType.number,
         
          
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            controller: _verificationController,
             inputFormatters: [ maskFormatter],
            decoration: textInputDecoration.copyWith(
              hintText: "OTP",
            
            ),
            
          );
  }
}
