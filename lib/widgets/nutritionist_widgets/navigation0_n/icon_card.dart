import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key,required this.myIcon,required this.mainText,required this.text,required this.myColor}) : super(key: key);
final myIcon;
final mainText;
final  text;
final myColor;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        width: 186,
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: myColor,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      myIcon,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  mainText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
