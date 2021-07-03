import 'package:flutter/material.dart';

class RequestAppointmentCardPart1 extends StatelessWidget {
  const RequestAppointmentCardPart1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(33)),
                  image: DecorationImage(
                      image: AssetImage("assets/Djon.png")))),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "John Terry",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 23),
            ),
            SizedBox(height: 8),
            Text(
              "JohnTerry@gmail.com",
              style: TextStyle(
                  color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(height: 13),
            Text(
              "⬤ Available Today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                  fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
