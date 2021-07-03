import 'package:flutter/material.dart';

import 'add_to_cart_button.dart';

class AddingCard extends StatelessWidget {
  const AddingCard(
      {Key? key,
      required this.asset,
      required this.description,
      required this.data,
      required this.addToCart
      
      })
      : super(key: key);
  final String asset;
  final String description;
  final String data;

  final Widget addToCart;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 270,
        width: double.infinity,
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(asset))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            description,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            data,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      addToCart
                    ],
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
