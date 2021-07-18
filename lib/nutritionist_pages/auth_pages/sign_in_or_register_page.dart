import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_border_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';

class SignInOrRegisterPage extends StatelessWidget {
  const SignInOrRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[50],
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const NutrizyAppBarText(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/girl_is_choosing.png')))),
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
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png')))),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Welcome to Nutrizy",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The best App for doctor’s to manage their practice.",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.grey[800],
                        thickness: 1,
                        height: 60,
                      ),
                      RoundedStretchButton(
                          color: Colors.blueAccent,
                          text: 'Sign in',
                          function: () {}),
                      SizedBox(
                        height: 20,
                      ),
                      RoundedBorderStretchButton(
                          text: 'Register with Us',
                          function: () {
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.register_doctor_page);
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
