import 'package:flutter/material.dart';

class HasBeenSent extends StatelessWidget {
  const HasBeenSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900]!.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 65,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.green[600],
                  size: 95,
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                "Your Request has been Sent",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 170),
            Divider(
              thickness: 0.5,
              color: Colors.white,
              indent: 50,
              endIndent: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                "Now Relax, Our team will got back to soonest",
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
