import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/shared/constants.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class TextFormSignIn extends StatefulWidget {
  const TextFormSignIn({required this.formKey});
  final formKey;

  // final bool whichPage;
  @override
  _TextFormSignInState createState() => _TextFormSignInState();
}

class _TextFormSignInState extends State<TextFormSignIn> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    final _modelProvider = Provider.of<BeginPagesProviderModel>(context);
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.h * 10.0,
          ),
          Text(
            "Your Email/Username",
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
            controller: _emailController,
            decoration: textInputDecoration.copyWith(
                hintText: "Email",
                suffixIcon: Consumer<BeginPagesProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidEmail
                              ? Icon(
                                  Icons.check_circle,
                                  size: SizeConfig.w * 15,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                  size: SizeConfig.w * 9,
                                ),
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!.validate()) {
                              _modelProvider.setIsValidEmail(
                                  widget.formKey.currentState!.validate());
                            }
                          },
                        ))),
            validator: (val) => val!.isEmpty ? "Enter an email" : null,
            onChanged: (val) {},
          ),
          SizedBox(
            height: SizeConfig.h * 10.0,
          ),
          Text(
            "Your Password",
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
            obscureText: true,
            controller: _passwordController,
            decoration: textInputDecoration.copyWith(
                hintText: "Password",
                suffixIcon: Consumer<BeginPagesProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidPassword
                              ?  Icon(
                                  Icons.check_circle,
                                  size: SizeConfig.w * 15,
                                )
                              :  Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: SizeConfig.w * 9,
                                ),
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!.validate()) {
                              _modelProvider.setIsValidPassword(
                                  widget.formKey.currentState!.validate());
                            }
                          },
                        ))),
            validator: (val) =>
                val!.length < 6 ? "Enter a password 6+ chars long" : null,
          ),
        ],
      ),
    );
  }
}
