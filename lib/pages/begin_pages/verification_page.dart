import 'package:flutter/material.dart';


import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar_back_button.dart';

import 'package:nutrizy_app_ui/widgets/beginPagesWidget/logo_button_registration.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/rich_text_registration.dart';

import 'package:nutrizy_app_ui/widgets/beginPagesWidget/text_form_verification_page.dart';

import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/text_button_pages.dart';


import '../../route.generator.dart';
import '../../size_config.dart';
class VerifivcationPage extends StatefulWidget {
  const VerifivcationPage({ Key? key }) : super(key: key);

  @override
  _VerifivcationPage createState() => _VerifivcationPage();
}

class _VerifivcationPage extends State<VerifivcationPage> {
    final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.h * 37.5),
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
                   BorderRadius.vertical(top: Radius.circular(SizeConfig.w * 12.5))),
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(SizeConfig.w * 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'OTP Verification',
                      style:  TextStyle(fontSize: SizeConfig.w * 9, color: Colors.black),
                    ),
                     SizedBox(height: SizeConfig.h * 4),
                     Text(
                      'Please Enter Verification Code',
                      style:  TextStyle(
                          fontSize: SizeConfig.w * 13.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        padding:  EdgeInsets.symmetric(
                            vertical: SizeConfig.h * 10.0, horizontal: 0.0),
                        child: TextFormVerificationPage(formKey: _formKey,)),
                
                     SizedBox(
                      height: SizeConfig.h * 13.5,
                    ),
                    RoundedStretchButton(
                        color: Colors.green[600],
                        text: "Verfy OTP",
                        function: () => {
                              if (_formKey.currentState!
                                  .validate())
                                {
                                  Navigator.pushNamed(context,
                                      RouteGenerator.successful_created)
                                }
                            }),
                     SizedBox(height: SizeConfig.h * 7.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const LogoButton(asset: "assets/google_logo.png"),
                         SizedBox(width: SizeConfig.w * 8,),
                        const LogoButton(asset: "assets/facebook_logo.png")
                      ],
                    ),
                     SizedBox(height: SizeConfig.h * 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Do you have an Account?",
                          style:
                              TextStyle(fontSize: SizeConfig.w * 10, color: Colors.grey[800]),
                        ),
                        TextButtonPages(
                          colors: Colors.black,
                          text: "Sign In",
                          function: () {
                            Navigator.of(context).pushNamed(RouteGenerator.sign_in);
                          },
                          size: SizeConfig.w * 11.5,
                        )
                      ],
                    ),
                     SizedBox(height: SizeConfig.h * 25),
                     Divider(
                      height: SizeConfig.h * 3.5,
                      color: Colors.black,
                    ),
                     SizedBox(height: SizeConfig.h * 10),
                    RichTextRegistration()
                  ]),
            ),
          ),
        ));
  }
}
