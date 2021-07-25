import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/other_pages/patient_details_page_n.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/rounded_button.dart';

class PatientIsWaitingCard extends StatelessWidget {
  const PatientIsWaitingCard({
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatientDetailsPageN(
                                  image: 'assets/avatar_niger_image.jpg',
                                  name: "Sofia Wayn",
                                  age: "23 Years . Female",
                                  date: 'Today 7:20 PM')),
                        );
                      },
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/avatar_niger_image.jpg')),
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sofia Wayn",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "23 Years . Female",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Container(
                                height: 22,
                                width: 22,
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
                              "Patient is waiting...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            RoundedButton(
                                textColor: Colors.white,
                                buttonColor: Colors.blueAccent[700]!,
                                text: 'Join Now',
                                side: BorderSide.none),
                            SizedBox(width: 10),
                            RoundedButton(
                              textColor: Colors.black,
                              buttonColor: Colors.white,
                              text: 'Chat',
                              side: const BorderSide(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
