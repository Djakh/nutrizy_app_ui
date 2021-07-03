import 'package:flutter/material.dart';

import 'not_flat_container_text.dart';

class PositionedCard extends StatelessWidget {
  const PositionedCard({ Key? key,required this.bottomMargin, required this.index }) : super(key: key);
final double bottomMargin;
final int index;
  @override
  Widget build(BuildContext context) {

    return   Positioned(
          bottom: bottomMargin,
          child: Draggable(
              onDragEnd: (drag) {
               
              },
              childWhenDragging: Container(),
              feedback: GestureDetector(
                onTap: () {
          
                },
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
                          borderRadius:
                           const   BorderRadius.all(Radius.circular(20)),
                        ),
                      )),
                ),
              ),
              child: Card(
                  color: Colors.green[600],
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                     borderRadius:  BorderRadius.circular(20.0),
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
                                  image: const DecorationImage(
                                      image: const AssetImage('assets/Djon.png'),
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
                                       const Text(
                                          "John Terry",
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
                                    const Text(
                                          "32 Years | Dietitics / Nutrition.",
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
                          const SizedBox(height:15),
                         const NotFlatContainerText()
                        ],
                      ),
                    ),
                  ))),
        );
  }
}


