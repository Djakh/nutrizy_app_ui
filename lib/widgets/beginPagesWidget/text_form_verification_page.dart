import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';



import 'package:nutrizy_app_ui/shared/constants.dart';


class TextFormVerificationPage extends StatefulWidget {
  const TextFormVerificationPage({required this.formKey});
  final formKey;

  // final bool whichPage;
  @override
  _TextFormVerificationPage createState() => _TextFormVerificationPage();
}

class _TextFormVerificationPage extends State<TextFormVerificationPage> {


  final _verificationController = TextEditingController();
var maskFormatter = new MaskTextInputFormatter(mask: '#    -     #     -     #     -     #', );
  @override
  Widget build(
    BuildContext context,
  ) {

    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Enter OTP",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
             obscureText: false,
            keyboardType: TextInputType.number,
         
          
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            controller: _verificationController,
             inputFormatters: [ maskFormatter],
            decoration: textInputDecoration.copyWith(
              hintText: "OTP",
              suffixIcon: const Icon(
                Icons.visibility,
                color: Colors.grey,
                size: 18,
              ),
            ),
            validator: (val) =>   false 
                ? "Invalid Number"
                : null,
          ),
        ],
      ),
    );
  }
}
