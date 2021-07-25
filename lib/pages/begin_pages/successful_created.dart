import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar_back_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';

import '../../route.generator.dart';
import '../../size_config.dart';

class SuccessfulCreated extends StatelessWidget {
  const SuccessfulCreated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.h * 37.5),
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
                height: SizeConfig.h * 175,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/successfull_created3.jpg"))),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.w * 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: SizeConfig.w * 35,
                    ),
                    SizedBox(height: SizeConfig.h * 10),
                    Text(
                      "Congratulations",
                      style: TextStyle(
                        fontSize: SizeConfig.w * 9,
                      ),
                    ),
                    SizedBox(height: SizeConfig.h * 5),
                    Text("You have successfully Created an Account",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: SizeConfig.w * 13.5,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: SizeConfig.h * 25),
                    RoundedStretchButton(
                        color: Colors.green[600],
                        text: "Get Started Now",
                        function: () => {
                              Navigator.of(context)
                                  .pushNamed(RouteGenerator.detail_page)
                            }),
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
