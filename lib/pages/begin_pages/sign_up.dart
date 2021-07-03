import 'package:flutter/material.dart';


import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar_back_button.dart';

import 'package:nutrizy_app_ui/widgets/beginPagesWidget/logo_button_registration.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/rich_text_registration.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/text_form_sign_up.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/text_button_pages.dart';


import '../../route.generator.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            backgroundColor: Colors.indigo[50],
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: const NutrizyAppBarBackButton(),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(25))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Let`s Sign you up',
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Get Registered with Us !',
                      style: const TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 0.0),
                        child: TextFormSignUp(formKey: _formKey,)),
                
                    const SizedBox(
                      height: 27.0,
                    ),
                    RoundedStretchButton(
                        color: Colors.green[600],
                        text: "Sign Up",
                        function: () => {
                              if (_formKey.currentState!
                                  .validate())
                                {
                                  Navigator.pushNamed(context,
                                      RouteGenerator.create_account)
                                }
                            }),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const LogoButton(asset: "assets/google_logo.png"),
                        const LogoButton(asset: "assets/facebook_logo.png")
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do you have an Account?",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[800]),
                        ),
                        TextButtonPages(
                          colors: Colors.black,
                          text: "Sign In",
                          function: () {
                            Navigator.of(context).pushNamed(RouteGenerator.sign_in);
                          },
                          size: 23,
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Divider(
                      height: 7,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 20),
                    RichTextRegistration()
                  ]),
            ),
          ),
        ));
  }
}
