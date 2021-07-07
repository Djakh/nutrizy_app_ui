import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/first_card.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/second_card.dart';

class Navigation3Page extends StatelessWidget {
  const Navigation3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: Container(
      child: Stack(
          children: [
            Container(color: Colors.blue),
            Container(
              height: 200,
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                toolbarHeight: 80,
                backgroundColor: Colors.indigo[50],
                centerTitle: true,
                title: RowBackTitleIcon(
                    text: "Notifications",
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
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 15),
                FirstCard(),
                SizedBox(height: 10),
                SecondCard(
                  text1: "Consultation scheduled in 5 Min with",
                  text2: "Doctor John Terry",
                ),
                SizedBox(height: 40),
                Text('Yesterday', style: TextStyle(fontSize: 20,color: Colors.grey[800], fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
               SecondCard(
                  text1: "New planes have added to your cart",
                  text2: "Make Payment to do check out",
                ),
              ]),
            )
          ],
      ),
    ),
        ));
  }
}
