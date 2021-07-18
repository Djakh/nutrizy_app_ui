import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/rich_text_registration.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/register_doctor_page_widgets/text_form_verify_mobile.dart';

import '../../route.generator.dart';



class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.indigo[50],
        centerTitle: true,
        title:
            RowBackTitleIcon(mySize: 32, text: "Register", iconOf: SizedBox()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.indigo[50],
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enter OTP for verification",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Enter OTP",
                          ),
                         
                          TextFormVerifyMobile(
                              ),
                          SizedBox(
                            height: 100,
                          ),
                          RichTextRegistration(),
                          SizedBox(
                            height: 25,
                          ),
                          RoundedStretchButton(
                              color: Colors.blueAccent,
                              text: "Verify OTP",
                              function: () {
                                Navigator.of(context)
                                    .pushNamed(RouteGenerator.create_account_nutritionist);
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
