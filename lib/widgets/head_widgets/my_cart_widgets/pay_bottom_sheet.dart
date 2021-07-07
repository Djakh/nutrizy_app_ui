import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_cart_widgets/stretch_image_button.dart';
import 'package:provider/provider.dart';

class PayBottomSheet extends StatelessWidget {
  const PayBottomSheet({Key? key, required this.name, required this.index})
      : super(key: key);
  final String name;
  final int index;
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation1Provider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Total Product',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$name (${_modelProvider.getCertainCartAmmount(index)})',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Text(
              '${_modelProvider.getCertainCartAmmount(index) * 5} AED',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Text(
              '2 AED',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 13,
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Payable',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            _modelProvider.getCertainCartAmmount(index) != 0 ?
            Text(
              '${_modelProvider.getCertainCartAmmount(index) * 5 + 2} AED',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ) : Text(
              '0 AED',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        StretchImageButton(
            color: Colors.blueAccent, text: "Make Payment", function: () {})
      ]),
    );
  }
}
