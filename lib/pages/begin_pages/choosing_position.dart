import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/models/beginPagesModel.dart';
import 'package:nutrizy_app_ui/widgets/registration_pages/two_buttons_choosing_position.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/container_image.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar.dart';

class ChoosingPositon extends StatelessWidget {
  const ChoosingPositon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const NutrizyAppBarText(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: const ContainerImage(
                      height: 350.0,
                      width: 350.0,
                      asset: "assets/registration_first.png"),
                ),
              const  ContainerImage(
                    height: 45.0, width: 45.0, asset: "assets/logo.png"),
                const SizedBox(height: 20),
                Text(
                  slideList[1].text,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
               const SizedBox(height: 20),
                TwoButtonsChoosingPosition()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

