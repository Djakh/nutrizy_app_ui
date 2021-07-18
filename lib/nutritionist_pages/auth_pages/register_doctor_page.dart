import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/rich_text_registration.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/register_doctor_page_widgets/text_form_register_mobile.dart';

class RegisterDoctorPage extends StatefulWidget {
  const RegisterDoctorPage({Key? key}) : super(key: key);

  @override
  _RegisterDoctorPageState createState() => _RegisterDoctorPageState();
}

class _RegisterDoctorPageState extends State<RegisterDoctorPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TextEditingController(text: '+971 -');
  }

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
                            "Register with Mobile Number",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Mobile number",
                          ),
                          TextFormRegisterMobile(
                              controller: _controller, formKey: _formKey),
                          SizedBox(
                            height: 100,
                          ),
                          RichTextRegistration(),
                          SizedBox(
                            height: 25,
                          ),
                          RoundedStretchButton(
                              color: Colors.blueAccent,
                              text: "Send OTP",
                              function: () {
                                Navigator.of(context)
                                    .pushNamed(RouteGenerator.veirfy_otp_page);
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
