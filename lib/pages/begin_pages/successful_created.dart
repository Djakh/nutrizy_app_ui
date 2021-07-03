import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar_back_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';

import '../../route.generator.dart';

class SuccessfulCreated extends StatelessWidget {
  const SuccessfulCreated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const NutrizyAppBarBackButton(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/successfull_created3.jpg"))),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 70,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Congratulations",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("You have successfully Created an Account",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                            SizedBox(height: 50),
                    RoundedStretchButton(
                        color: Colors.green[600],
                        text: "Get Started Now",
                        function: () => {Navigator.of(context).pushNamed(RouteGenerator.detail_page)}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
