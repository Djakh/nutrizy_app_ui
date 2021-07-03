import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation1_widgets/add_to_cart_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation1_widgets/adding_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation_card_asset_text.dart';
import 'package:provider/provider.dart';

class Navigation1Page extends StatelessWidget {
  const Navigation1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1Provider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Column(
              children: [
                Text(
                  'Diet Programs',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 241,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      NavigationCardAssetText(
                        function: () {
                          Navigator.pushNamed(context, RouteGenerator.program_details);
                        },
                        asset: "assets/navigation0_card_photo1.png",
                        description: "Personal Training Program",
                        data: "January, 19 2021",
                      ),
                      NavigationCardAssetText(
                        function: () {},
                        asset: "assets/fruits.png",
                        description: "Food Diet and Nutrition Plan",
                        data: "October, 20 2021",
                      ),
                      NavigationCardAssetText(
                        function: () {},
                        asset: "assets/fruits.png",
                        description: "Food Diet and Nutrition Plan",
                        data: "October, 20 2021",
                      ),
                      NavigationCardAssetText(
                        function: () {},
                        asset: "assets/navigation0_card_photo1.png",
                        description: "Personal Training Program",
                        data: "January, 19 2021",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Diet Recipes',
                      style: TextStyle(fontSize: 22),
                    ),
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
                SizedBox(height: 7),
                ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    AddingCard(
                      addToCart: AddToCartButton(
                        myBool: _modelProvider.getfirstBoolCart,
                        function: () {
                          _modelProvider.changeFirstAddCart();
                        },
                        text: 'Add to cart',
                      ),
                      description: 'Green Smothie',
                      data: 'October, 19 2021',
                      asset: 'assets/first_healthy_food.jpg',
                    ),
                    SizedBox(height: 10),
                    AddingCard(
                      addToCart: AddToCartButton(
                        myBool: _modelProvider.getsecondBoolCart,
                        function: () {
                          _modelProvider.changeSecondAddCart();
                        },
                        text: 'Add to cart',
                      ),
                      description: 'Pear indgredient',
                      data: 'September, 15 2020',
                      asset: 'assets/second_healthy_food.jpg',
                    ),
                    AddingCard(
                      addToCart: AddToCartButton(
                        myBool: _modelProvider.getThirdBoolCart,
                        function: () {
                          _modelProvider.changeThirdAddCart();
                        },
                        text: 'Add to cart',
                      ),
                      description: 'Radish',
                      data: 'January, 23 2021',
                      asset: 'assets/third_healthy_food.jpg',
                    ),
                    AddingCard(
                      addToCart: AddToCartButton(
                        myBool: _modelProvider.getForthBoolCart,
                        function: () {
                          _modelProvider.changeForthAddCart();
                        },
                        text: 'Add to cart',
                      ),
                      description: 'Healthy food',
                      data: 'May, 11 2021',
                      asset: 'assets/forth_healthy_food.jpg',
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Navigation1AppBar extends StatelessWidget {
  const Navigation1AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1Provider>(context);
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
            text: "Shop Health Products",
            iconOf: Stack(children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_sharp,
                    size: 37,
                    color: Colors.grey[800],
                  )),
              Positioned(
                top: 10,
                left: 28,
                child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.red[600],
                    child: Text(
                      "${_modelProvider.getNumberOfItem}",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ])));
  }
}
