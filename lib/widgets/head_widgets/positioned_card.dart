import 'package:flutter/material.dart';

import 'not_flat_container_text.dart';

class PositionedCard extends StatelessWidget {
  const PositionedCard(
      {Key? key,
      required this.bottomMargin,
      required this.index,
      required this.myColor,
      required this.name,
      required this.information,
      required this.image})
      : super(key: key);
  final double bottomMargin;
  final int index;
  final myColor;
  final String name;
  final String information;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottomMargin,
      child: Draggable(
          onDragEnd: (drag) {},
          childWhenDragging: Container(),
          feedback: GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // color: Color.fromARGB(250, 112, 19, 179),
              child: Hero(
                  tag: "imageTag",
                  child: Container(
                    height: 170.0,
                    width: 370.0,
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  )),
            ),
          ),
          child: Card(
              color: myColor,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // color: Color.fromARGB(250, 112, 19, 179),
              child: Container(
                height: 170.0,
                width: 370.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image:  DecorationImage(
                                  image:  AssetImage(image),
                                  fit: BoxFit.cover),
                            ),
                            height: 70.0,
                            width: 70.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                         Text(
                                          name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.videocam,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      information,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const NotFlatContainerText()
                    ],
                  ),
                ),
              ))),
    );
  }
}
