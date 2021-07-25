import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/gesture_arrow_button.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    Key? key,
    required this.iconOf,
    required this.text,required this.image,
  }) : super(key: key);
  final iconOf;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: GestureArrowButton(
                    iconOf: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.black,
                    ),
                    function: () {
                      Navigator.pop(context);
                    }))),
        Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Stack(children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage(image),
                    ),
                    Positioned(
                      top: 24,
                      left: 20,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ]),
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Expanded(child: Align(alignment: Alignment.centerRight, child: CircleAvatar(
backgroundColor: Colors.grey[300],
radius: 20,
          child: iconOf
        ))),
      ],
    );
  }
}
