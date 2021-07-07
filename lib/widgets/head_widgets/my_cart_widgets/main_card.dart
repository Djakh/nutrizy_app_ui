import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_cart_widgets/compute_circle_button.dart';
import 'package:provider/provider.dart';

class MainCard extends StatelessWidget {
  const MainCard(
      {Key? key,
      required this.name,
      required this.data,
      required this.asset,
      required this.id,
      required this.index})
      : super(key: key);
  final String name;
  final String data;
  final String asset;
  final String id;
  final int index;
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1Provider>(context);
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: id,
                    child: Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                asset,
                              ))),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
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
                    SizedBox(width: 20),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ComputeCircleButton(symbol: "-", function: () {
                            _modelProvider.decreaseCart(index);
                          }),
                          Text(
                            "${_modelProvider.getCertainCartAmmount(index)}",
                            style: TextStyle(
                                
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          ComputeCircleButton(symbol: "+", function: () {
                            _modelProvider.increaseCart(index);
                          }),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
