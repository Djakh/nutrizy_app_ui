import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation1_widgets/add_to_cart_button.dart';

class AddingCard extends StatelessWidget {
  const AddingCard(
      {Key? key,
      required this.asset,
      required this.name,
      required this.data,
      required this.onChoosed,
      required this.addToCart,required this.id})
      : super(key: key);
      final String id;
  final String asset;
  final String name;
  final String data;
  final Function onChoosed;
  final Widget addToCart;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChoosed();
      },
      child: ClipRRect(
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
                      child: Hero(
                                              tag: id,
                                              child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(asset))),
                        ),
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
                              name,
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
      ),
    );
  }
}
