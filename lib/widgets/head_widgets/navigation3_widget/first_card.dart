import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/detail_widgets/choose_plan_rich_text.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/rounded_button.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
            height: 205,
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
                        backgroundImage: AssetImage('assets/Djon.png')),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start Consultation",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        ChoosePlanRichText(
                            mySize: 17.0,
                            firstText: 'Chat with ',
                            secondText: 'Doctor John Terry',
                            textStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/grey_clock.png')))),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Doctor is waiting...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        RoundedButton(
                          textColor: Colors.white,
                          buttonColor: Colors.blueAccent[700]!,
                          text: 'Join Chat',
                          side: BorderSide.none,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
