import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/choose_plan_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/detail_widgets/choose_plan_rich_text.dart';
import 'package:nutrizy_app_ui/widgets/detail_widgets/circle_checkbox_container.dart.dart';
import 'package:nutrizy_app_ui/widgets/detail_widgets/radio_container.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:provider/provider.dart';


class ChoosePlan extends StatelessWidget {
  const ChoosePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<ChoosePlanProvider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.white10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Choose plan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black),
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/avatar_niger_image.jpg"),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Unlock all features with Premium Plan",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              SizedBox(height: 27),
              CircleCheckboxContainer(
                  isMultipleColor: true,
                  description: "Gold Package",
                  amount: "15,000 UAD",
                  color: [Colors.red, Colors.yellowAccent]),
              SizedBox(height: 20),
              CircleCheckboxContainer(
                  isMultipleColor: false,
                  description: "Platinum Package",
                  amount: "10,000 UAD",
                  color: Colors.blue[100]),
              SizedBox(height: 32),
              Text(
                "Duration",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Select Plan Durations",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RadioContainer(
                    text: "1 Month",
                    boolOfRadio: _modelProvider.getFirstBool,
                    function: () {
                      _modelProvider.changeFirstBool();
                    },
                  ),
                  RadioContainer(
                    text: "2 Month",
                    boolOfRadio: _modelProvider.getSecondBool,
                    function: () {
                      _modelProvider.changeSecondBool();
                    },
                  ),
                  RadioContainer(
                    text: "3 Month",
                    boolOfRadio: _modelProvider.getThirdBool,
                    function: () {
                      _modelProvider.changeThirdBool();
                    },
                  )
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Plan Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(height: 18),
              Text(
                "Discover everything you need to know to transform your life once and for all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black),
              ),
              ChoosePlanRichText(firstText:  "• Learn the truth about calorie intake and the secret to consuming the desired...", secondText: "Read more", textStyle:  const TextStyle(
                color: Colors.blue,),),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RoundedStretchButton(color: Colors.green[700], text: "15,000 UAD Buy Now", function: () {Navigator.of(context).pushNamed(RouteGenerator.head_page);}),
                )
            ],
          ),
        ),
      ),
    );
  }
}

