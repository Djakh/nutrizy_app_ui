import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/shared/constants.dart';
import 'package:provider/provider.dart';

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
          const SizedBox(
            height: 20.0,
          ),
         const  Text(
           "Your Email/Username",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          
          TextFormField(
            
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            controller: _emailController,
         
            decoration: textInputDecoration.copyWith(
              
                hintText: "Email",
                suffixIcon: Consumer<BeginPagesProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidEmail
                              ?const Icon(
                                  Icons.check_circle,
                                  size: 30,
                                )
                              :const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!
                                .validate()) {
                              _modelProvider.setIsValidEmail(
                                  widget.formKey.currentState!
                                      .validate());
                            }
                          },
                        ))),
            validator: (val) => val!.isEmpty ? "Enter an email" : null,
            onChanged: (val) {},
          ),
          const SizedBox(
            height: 20.0,
          ),
      const Text(
          "Your Password",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              obscureText:  true,
            
            controller: _passwordController,
            decoration: textInputDecoration.copyWith(
                hintText:  "Password",
                suffixIcon: Consumer<BeginPagesProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidPassword
                              ?const Icon(
                                  Icons.check_circle,
                                  size: 30,
                                )
                              :const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!
                                .validate()) {
                              _modelProvider.setIsValidPassword(
                                  widget.formKey.currentState!
                                      .validate());
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
