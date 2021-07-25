import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/three_icon_column.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      child: Container(
        width: double.infinity,
        child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: CircleAvatar(
                            radius: 37,
                            backgroundImage:
                                AssetImage('assets/avatar_niger_image.jpg'))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kathryn Spancer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "33 years, female",
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Design Student",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 18),
                Divider(
                  color: Colors.grey,
                ),
                ThreeIconColumn()
              ]),
            )),
      ),
    );
  }
}
