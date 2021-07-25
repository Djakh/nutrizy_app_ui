import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation3_n/patient_cards.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation3_n/patient_is_waiting_card.dart';

class Navigation3PageN extends StatelessWidget {
  const Navigation3PageN({Key? key}) : super(key: key);

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
                    text: "My Appointments",
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
                    Text(
                      'Today`s Appointments',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    PatientIsWaitingCard(),
                    SizedBox(height: 15),
                    PatientCards(
                      image:'assets/kathryn.png',
                      name: 'Kathryn Spancer',
                      age: '33 Years . Female',
                      date: 'Today 7:20 PM',
                    ),
                    SizedBox(height: 15),
                    PatientCards(
                      image:'assets/lehel.png',
                      name: 'Lehel Ferry',
                      age: '21 Years . Female',
                      date: 'Today 11:20 PM',
                    ),
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
