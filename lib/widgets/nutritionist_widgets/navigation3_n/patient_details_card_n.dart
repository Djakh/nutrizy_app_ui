import 'package:flutter/material.dart';

class PatientDetailsCard extends StatelessWidget {
  const PatientDetailsCard({
    Key? key,
    required this.name,
    required this.age,
    required this.date,
    required this.image,
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
                    CircleAvatar(
                        radius: 25, backgroundImage: AssetImage(image)),
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
                              date,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
