import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/rounded_second_button.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    Key? key,required this.text1,required this.text2,
  }) : super(key: key);
final String text1;
final String text2;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
            height: 180,
            width: double.infinity,
            child: Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.blueAccent[100],
                      child: Icon(Icons.notifications_sharp, size: 30),
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reminder',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          text1,
                          style: TextStyle(fontSize: 16, ),
                        ),
                       
                        SizedBox(height: 4),
                        Text(
                          text2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 18),
                        RoundedSecondButton()
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
