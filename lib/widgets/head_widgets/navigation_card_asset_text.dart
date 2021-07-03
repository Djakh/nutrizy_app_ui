import 'package:flutter/material.dart';

class NavigationCardAssetText extends StatelessWidget {
  const NavigationCardAssetText(
      {Key? key,
      required this.asset,
      required this.description,
      required this.data, required this.function})
      : super(key: key);
  final String asset;
  final String description;
  final String data;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {function();},
          child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          height: 240,
          width: 180,
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(27),
                    child: Container(
                      height: 140,
                      width: 155,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(asset))),
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  SizedBox(height:10),
                  Text(
                    data,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 13,
                       ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
