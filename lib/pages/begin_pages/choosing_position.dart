import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/models/beginPagesModel.dart';
import 'package:nutrizy_app_ui/widgets/registration_pages/two_buttons_choosing_position.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/container_image.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar.dart';

import '../../size_config.dart';

class ChoosingPositon extends StatelessWidget {
  const ChoosingPositon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.h * 42.5),
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
            padding:  EdgeInsets.symmetric(horizontal: SizeConfig.w * 12.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Center(
                  child:  ContainerImage(
                      height: SizeConfig.h * 175.0,
                      width: SizeConfig.w * 175.0,
                      asset: "assets/registration_first.png"),
                ),
                ContainerImage(
                    height: SizeConfig.h * 22.5, width: SizeConfig.w * 22.5, asset: "assets/logo.png"),
                 SizedBox(height: SizeConfig.h * 10),
                Text(
                  slideList[1].text,
                  style: TextStyle(
                    fontSize: SizeConfig.w * 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: SizeConfig.h * 10),
                TwoButtonsChoosingPosition()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

