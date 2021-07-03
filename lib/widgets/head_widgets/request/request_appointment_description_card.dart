import 'package:flutter/material.dart';

class RequestAppointmentDescriptionCard extends StatelessWidget {
  const RequestAppointmentDescriptionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          'Dietitics/Nutrition.',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        Text(
          'Post Graduate Diploma in Sports Nutrition',
          style: TextStyle(fontSize: 17),
        ),
        Text(
          '(20 yeears as specialist)',
          style: TextStyle(fontSize: 17),
        ),
      ]),
    );
  }
}
