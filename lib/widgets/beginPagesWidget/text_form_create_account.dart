import 'package:flutter/material.dart';

import 'package:nutrizy_app_ui/shared/constants.dart';

import '../../size_config.dart';

class TextFormCreateAccount extends StatefulWidget {
  const TextFormCreateAccount({required this.formKey});
  final formKey;

  // final bool whichPage;
  @override
  _TextFormCreateAccount createState() => _TextFormCreateAccount();
}

class _TextFormCreateAccount extends State<TextFormCreateAccount> {
  final _passwordController = TextEditingController();

  final _reEnteredPasswordController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.h * 10.0,
          ),
          Text(
            "Enter Your Password",
            style: TextStyle(
              fontSize: SizeConfig.w * 7.5,
            ),
          ),
          SizedBox(
            height: SizeConfig.h * 5.0,
          ),
          TextFormField(
            style: TextStyle(
                fontSize: SizeConfig.w * 11.5, fontWeight: FontWeight.bold),
            controller: _passwordController,
            decoration: textInputDecoration.copyWith(
              hintText: "Password",
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.grey,
                size: SizeConfig.w * 9,
              ),
            ),
            validator: (val) =>
                val!.length < 6 ? "Enter an valid password" : null,
            onChanged: (val) {},
          ),
          SizedBox(
            height: SizeConfig.h * 10.0,
          ),
          Text(
            "Re-Enter Your Password",
            style: TextStyle(
              fontSize: SizeConfig.h * 7.5,
            ),
          ),
          SizedBox(
            height: SizeConfig.h * 5.0,
          ),
          TextFormField(
            style: TextStyle(
                fontSize: SizeConfig.w * 11.5, fontWeight: FontWeight.bold),
            controller: _reEnteredPasswordController,
            decoration: textInputDecoration.copyWith(
              hintText: "Password",
              suffixIcon:  Icon(
                Icons.visibility,
                color: Colors.grey,
                size: SizeConfig.w * 9,
              ),
            ),
            validator: (val) => val != _passwordController.text
                ? "Re-Entered password is not equal to original password"
                : null,
          ),
        ],
      ),
    );
  }
}
