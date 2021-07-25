import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/three_icon_column.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/description_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/round_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation3_n/patient_details_card_n.dart';

class PatientDetailsPageN extends StatelessWidget {
  const PatientDetailsPageN(
      {Key? key,
      required this.image,
      required this.name,
      required this.age,
      required this.date})
      : super(key: key);
  final String image;
  final String name;
  final String age;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Container(color: Colors.blue),
            Container(
              height: 230,
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                toolbarHeight: 80,
                backgroundColor: Colors.indigo[50],
                centerTitle: true,
                title: RowBackTitleIcon(
                    mySize: 25,
                    text: "Patient Details",
                    iconOf: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 37,
                          color: Colors.grey[800],
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundButton(text: "Paid", function: () {}, isClicked: true),
                    SizedBox(height: 10),
                    PatientDetailsCard(
                        name: name, age: age, date: date, image: image),
                    SizedBox(height: 5),
                    ThreeIconColumn(),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Goal Description',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DescriptionCard(),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 105.0),
                      child: RoundedStretchButton(
                          color: Colors.blueAccent[400],
                          text: 'Chat Now',
                          function: () {}),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
