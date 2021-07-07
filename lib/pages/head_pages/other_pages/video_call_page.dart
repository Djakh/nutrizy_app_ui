import 'package:flutter/material.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900]!.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 65,
                child: CircleAvatar(
                    radius: 62,
                    backgroundImage: AssetImage('assets/Djon.png'))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 7,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "John Terry | Nutritionist",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
               SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.videocam,
                        size: 30,
                        color: Colors.black,
                      )),
                  CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.blue[50],
                      child: Icon(
                        Icons.mic_sharp,
                        size: 30,
                        color: Colors.blue,
                      )),
                  CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
