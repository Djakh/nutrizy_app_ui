import 'package:flutter/material.dart';

class NotFlatContainerText extends StatelessWidget {
  const NotFlatContainerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.0,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/clock.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
                      SizedBox(width: 15),
              Text(
                "Sun, Jan 19, 08:00am - 10:00am",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ));
  }
}
