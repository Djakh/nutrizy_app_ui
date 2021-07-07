import 'package:flutter/material.dart';

class InsideListTappedTile extends StatelessWidget {
  const InsideListTappedTile({
    Key? key,required this.iconOf,required this.text,
  }) : super(key: key);
final iconOf;
final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(28)),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: ListTile(
            leading: Icon(
              iconOf,
              size: 33,
              color: Colors.black,
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.black,
               
                fontSize: 20,
              ),
            ),
            trailing: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.blue[50],
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                )),
          ),
        ),
      ),
    );
  }
}
