import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/models/my_cart_argument_model.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_cart_widgets/main_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_cart_widgets/pay_bottom_sheet.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  final MyCartArgumentModel routeArgs;
  const MyCart({Key? key, required this.routeArgs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1Provider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
            mySize: 25,
            text:
                "My Cart (${_modelProvider.getCertainCartAmmount(routeArgs.index)} Products)",
            iconOf: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 37,
                  color: Colors.grey[800],
                ))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            MainCard(
                index: routeArgs.index,
                id: routeArgs.id,
                name: routeArgs.name,
                data: routeArgs.data,
                asset: routeArgs.asset),
            SizedBox(height: 20),
            Text(
              "Product Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 17),
            Text(
              "Ingredients",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10),
            Text(
              routeArgs.ingredients,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 17,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: RoundedStretchButton(
                  color: Colors.blueAccent,
                  text: "To pay",
                  function: () {
                    showModalBottomSheet(
  context: context,
  isScrollControlled: true,
  backgroundColor: Colors.transparent,
  builder: (context) => Container(
    height: 300,
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(25.0),
        topRight: const Radius.circular(25.0),
      ),
    ),
    child: PayBottomSheet(name: routeArgs.name, index: routeArgs.index,)
  ),
);
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
