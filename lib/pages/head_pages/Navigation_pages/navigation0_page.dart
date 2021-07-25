import 'package:flutter/material.dart';

import 'package:nutrizy_app_ui/ProviderModels/navigation0_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/to_my_profile_avatar.dart';

import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation_card_asset_text.dart';

import 'package:nutrizy_app_ui/widgets/head_widgets/round_button.dart';

import 'package:provider/provider.dart';

class Navigation0Page extends StatelessWidget {
  const Navigation0Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation0Provider>(context);

    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: [
                Text("Hey, Rose",
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
            Text("Book Doctor`s Appointment Now",
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
                    Navigator.of(context)
                        .pushNamed(RouteGenerator.request_appointment);
                  },
                )
              ],
            ),
            Stack(
                alignment: Alignment.center,
                children: _modelProvider.getCardList),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Diet Programs",
                    style: TextStyle(color: Colors.black, fontSize: 21)),
                GestureArrowButton(
                  iconOf: Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: Colors.black,
                  ),
                  function: () {},
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavigationCardAssetText(
                  function: () {},
                  asset: "assets/navigation0_card_photo1.png",
                  description: "Personal Training Program",
                  data: "January, 19 2021",
                ),
                NavigationCardAssetText(
                  function: () {},
                  asset: "assets/navigation0_card_photo2.png",
                  description: "Food Diet and Nutrition Plan",
                  data: "October, 20 2021",
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class Navigation0AppBar extends StatelessWidget {
  const Navigation0AppBar({Key? key}) : super(key: key);

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
              ToMyProfileAvatar(
                image: "assets/avatar_niger_image.jpg",
                navigateTo: RouteGenerator.my_profile_page,
              )
            ],
          )
        ],
      ),
    );
  }
}
