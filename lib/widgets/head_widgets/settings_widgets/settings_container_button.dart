import 'package:flutter/material.dart';

class SettingsContainerButton extends StatelessWidget {
  const SettingsContainerButton({Key? key, required this.text})
      : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[900],
              ),
            ),
            CircleAvatar(
                radius: 13,
                backgroundColor: Colors.blue[50],
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                )),
          ],
        ));
  }
}
