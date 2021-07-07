import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/models/my_cart_argument_model.dart';
import 'package:nutrizy_app_ui/models/my_cart_model.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/my_cart.dart';
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
    return SingleChildScrollView(
      child: Container(
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
                            Navigator.pushNamed(
                                context, RouteGenerator.program_details);
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
                          myBool: _modelProvider.getCertainCartAmmount(
                                  myCartModelList[0].index) ==
                              0,
                          function: () {
                            _modelProvider.changeFirstAddCart();
                          },
                          text: 'Add to cart',
                        ),
                        onChoosed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MyCart(
                                routeArgs: MyCartArgumentModel(
                                  id:  myCartModelList[0].id,
                                    index: myCartModelList[0].index,
                                    name: myCartModelList[0].name,
                                    asset: myCartModelList[0].asset,
                                    data: myCartModelList[0].data,
                                    ingredients:
                                        myCartModelList[0].ingredients)),
                          );

                          Navigator.of(context).push(route);
                        },
                        id:  myCartModelList[0].id,
                        name: myCartModelList[0].name,
                        data: myCartModelList[0].data,
                        asset: myCartModelList[0].asset,
                      ),
                      SizedBox(height: 10),
                      AddingCard(
                        addToCart: AddToCartButton(
                          myBool: _modelProvider.getCertainCartAmmount(
                                  myCartModelList[1].index) ==
                              0,
                          function: () {
                            _modelProvider.changeSecondAddCart();
                          },
                          text: 'Add to cart',
                        ),
                        onChoosed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MyCart(
                                routeArgs: MyCartArgumentModel(
                                  id:  myCartModelList[1].id,
                                    index: myCartModelList[1].index,
                                    name: myCartModelList[1].name,
                                    asset: myCartModelList[1].asset,
                                    data: myCartModelList[1].data,
                                    ingredients:
                                        myCartModelList[1].ingredients)),
                          );

                          Navigator.of(context).push(route);
                        },
                           id:  myCartModelList[1].id,
                        name: myCartModelList[1].name,
                        data: myCartModelList[1].data,
                        asset: myCartModelList[1].asset,
                      ),
                      AddingCard(
                        addToCart: AddToCartButton(
                          myBool: _modelProvider.getCertainCartAmmount(
                                  myCartModelList[2].index) ==
                              0,
                          function: () {
                            _modelProvider.changeThirdAddCart();
                          },
                          text: 'Add to cart',
                        ),
                        onChoosed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MyCart(
                                routeArgs: MyCartArgumentModel(
                                  id:  myCartModelList[2].id,
                                    index: myCartModelList[2].index,
                                    name: myCartModelList[2].name,
                                    asset: myCartModelList[2].asset,
                                    data: myCartModelList[2].data,
                                    ingredients:
                                        myCartModelList[2].ingredients)),
                          );

                          Navigator.of(context).push(route);
                        },
                        id:  myCartModelList[2].id,
                        name: myCartModelList[2].name,
                        data: myCartModelList[2].data,
                        asset: myCartModelList[2].asset,
                      ),
                      AddingCard(
                        addToCart: AddToCartButton(
                          myBool: _modelProvider.getCertainCartAmmount(
                                  myCartModelList[3].index) ==
                              0,
                          function: () {
                            _modelProvider.changeForthAddCart();
                          },
                          text: 'Add to cart',
                        ),
                        onChoosed: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MyCart(
                                routeArgs: MyCartArgumentModel(
                                  id:  myCartModelList[3].id,
                                    index: myCartModelList[3].index,
                                    name: myCartModelList[3].name,
                                    asset: myCartModelList[3].asset,
                                    data: myCartModelList[3].data,
                                    ingredients:
                                        myCartModelList[3].ingredients)),
                          );

                          Navigator.of(context).push(route);
                        },
                         id:  myCartModelList[3].id,
                        name: myCartModelList[3].name,
                        data: myCartModelList[3].data,
                        asset: myCartModelList[3].asset,
                      )
                    ],
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
                      "${_modelProvider.getCommonNumber}",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ])));
  }
}
