import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider_n.dart';
import 'package:nutrizy_app_ui/models/my_cart_model.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_border_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/to_my_profile_avatar.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation1_widgets/adding_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/round_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation1_n/product_card.dart';
import 'package:provider/provider.dart';

class Navigation1PageN extends StatelessWidget {
  const Navigation1PageN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1ProviderN>(context);
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundButton(
                      text: "Breakfast",
                      function: () {
                        _modelProvider.chooseBreakfast();
                      },
                      isClicked: _modelProvider.getIsClickedBreakfast),
                  RoundButton(
                      text: "Desserts",
                      function: () {
                        _modelProvider.chooseDesserts();
                      },
                      isClicked: _modelProvider.getIsClickedDesserts),
                  RoundButton(
                      text: "Lunch",
                      function: () {
                        _modelProvider.chooseLunch();
                      },
                      isClicked: _modelProvider.getIsClickedLunch),
                ],
              ),
              AddingCard(
                addToCart: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.blue[100],
                        child: Icon(
                          Icons.edit_rounded,
                        )),
                  ],
                ),
                onChoosed: () {},
                id: "0",
                name: 'Green Smoothie',
                data: 'Posten on October 19 2021',
                asset: myCartModelList[0].asset,
              ),
              ProductCard(
                myImage: 'assets/mango.png',
                name: "Mango Pineaple Smoothie",
                data: "Posted on June 19 2021",
              ),
              SizedBox(
                height: 15,
              ),
              ProductCard(
                myImage: 'assets/brinza.png',
                name: "TOFU Berry Blast",
                data: "Posted on July 19 2021",
              ),
              SizedBox(
                height: 30,
              ),
              RoundedBorderStretchButton(
                  text: '+ Add New Product', function: () {
                    Navigator.of(context).pushNamed(RouteGenerator.add_product_page_n);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class Navigation1AppBarN extends StatelessWidget {
  const Navigation1AppBarN({Key? key}) : super(key: key);

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

