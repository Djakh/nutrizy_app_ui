import 'package:flutter/material.dart';

import 'package:nutrizy_app_ui/ProviderModels/navigation0_provider_n.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/to_my_profile_avatar.dart';

import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';

import 'package:nutrizy_app_ui/widgets/head_widgets/round_button.dart';

import 'package:provider/provider.dart';

class Navigation0PageN extends StatelessWidget {
  const Navigation0PageN({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation0ProviderN>(context);

    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: [
                Text("Hey, Doctor",
                    style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/emoji_of_hand.png"))),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text("Personalize your Consultation",
                style: TextStyle(
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RoundButton(
                        text: "Appointment",
                        function: () {
                          _modelProvider.chooseAppoinment();
                        },
                        isClicked: _modelProvider.getIsClickedAppoinment),
                    RoundButton(
                        text: "Analiytics",
                        function: () {
                          _modelProvider.chooseAnaliytics();
                        },
                        isClicked: _modelProvider.getIsClickedAnaliytics),
                  ],
                ),
                GestureArrowButton(
                  iconOf: Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Colors.black,
                  ),
                  function: () {
                    
                  },
                )
              ],
            ),
           _modelProvider.getCurrentWidgetPage()
          ]),
        ),
      ),
    );
  }
}

class Navigation0AppBarN extends StatelessWidget {
  const Navigation0AppBarN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 150,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[400],
                radius: 25,
                child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                      size: 40,
                    )),
              ),
              SizedBox(
                width: 32,
              ),
             ToMyProfileAvatar(image: "assets/Djon.png", navigateTo: RouteGenerator.my_profile_page_n,)
            ],
          )
        ],
      ),
    );
  }
}
