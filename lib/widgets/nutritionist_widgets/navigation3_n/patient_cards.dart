import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/other_pages/patient_details_page_n.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation3_widget/rounded_second_button.dart';

class PatientCards extends StatelessWidget {
  const PatientCards({
    Key? key,
    required this.name,
    required this.age,
    required this.date,required this.image,
  }) : super(key: key);
  final String name;
  final String age;
  final String date;
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Container(
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
                                  image: image,
                                  name: name,
                                  age: age,
                                  date: date)),
                        );
                      },
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(image)),
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          age,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
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
                              date,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
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
