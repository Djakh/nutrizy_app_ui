
import 'package:flutter/material.dart';

class ThreeIconColumn extends StatelessWidget {
  const ThreeIconColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: ListTile(
                minLeadingWidth: 5,
                leading: CircleAvatar(
                    radius: 17,
                    child: Icon(Icons.local_drink_outlined)),
                title: Text('7.6 Liters'),
              ),
            ),
            Expanded(
              flex: 6,
              child: ListTile(
                minLeadingWidth: 10,
                leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 17,
                    child: Icon(
                      Icons.restaurant,
                      color: Colors.white,
                    )),
                title: Text('2,0000 colories'),
              ),
            ),
          ],
        ),
        ListTile(
          minLeadingWidth: 10,
          leading: CircleAvatar(
              backgroundColor: Colors.red[600],
              radius: 17,
              child: Icon(
                Icons.monitor_weight_outlined,
                color: Colors.white,
              )),
          title: Text('56 Kilograms'),
        ),
      ],
    );
  }
}
