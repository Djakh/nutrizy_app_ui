import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/description_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/information_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/gold_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/list_tapped_tiles.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
          mySize: 25,
            text: "My Profile",
            iconOf: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[400],
                radius: 22,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteGenerator.settings_page);
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        size: 25,
                        color: Colors.grey[800],
                      )),
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoldButton(),
              SizedBox(
                height: 20,
              ),
              InformationCard(),
              SizedBox(
                height: 20,
              ),
              Text('Goal Description', style: TextStyle(fontSize: 19),),
              SizedBox(
                height: 10,
              ),
              DescriptionCard(),
              SizedBox(
                height: 20,
              ),
              ListTappedTiles()
            ],
          ),
        ),
      ),
    );
  }
}
