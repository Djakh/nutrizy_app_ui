import 'package:flutter/material.dart';

import '../icon_container.dart';

class RequestAppointmentCardPart2 extends StatelessWidget {
  const RequestAppointmentCardPart2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconContainer(
            color: Colors.yellow[700],
            iconOf: Icon(
              Icons.star,
              color: Colors.white,
              size: 20,
            ),
            string: "4.5",
          ),
          SizedBox(width: 50),
          IconContainer(
            color: Colors.blueAccent,
            iconOf: Icon(
              Icons.people,
              color: Colors.white,
              size: 20,
            ),
            string: "1000+ Patients",
          )
        ],
      ),
    );
  }
}

