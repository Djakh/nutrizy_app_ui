
import 'package:flutter/material.dart';

class SettingsMenuButton extends StatelessWidget {
  const SettingsMenuButton({
    Key? key,
    required this.name,
    required this.myList,
    required this.myWidget,
    required this.function,
    required this.secondText,
  }) : super(key: key);

  final String name;
  final List myList;
  final Widget myWidget;
  final Function function;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (int value) {
          function(value);
        },
        child: Container(
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
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[900],
                  ),
                ),
                Row(
                  children: [
                    myWidget,
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      secondText,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                        ,
                      ),
                    ),
                  ],
                )
              ],
            )),
        itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Container(width: 400, child: Text(myList[0].text)),
                value: 0,
              ),
              PopupMenuItem(
                child: Container(width: 400, child: Text(myList[1].text)),
                value: 1,
              ),
              PopupMenuItem(
                child: Container(width: 400, child: Text(myList[2].text)),
                value: 2,
              )
            ]);
  }
}
