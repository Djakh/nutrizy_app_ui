import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/text_button_pages.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/my_profile_widgets.dart/inside_list_tapped_tile.dart';

class ListTappedTiles extends StatelessWidget {
  const ListTappedTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InsideListTappedTile(
          iconOf: Icons.account_balance_wallet_outlined,
          text: 'Payment Details',
        ),
        SizedBox(height:10),
        InsideListTappedTile(
          iconOf: Icons.shopping_bag_outlined,
          text: 'My Orders',
        ),
        SizedBox(height:10),
        InsideListTappedTile(
          iconOf: Icons.list_alt_rounded,
          text: 'Payment Details',
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: RoundedStretchButton(
              color: Colors.blueAccent, text: "Edit Profile", function: () {Navigator.pop(context);}),
        ),
        SizedBox(height: 20),
        TextButton(
            onPressed: () {Navigator.pop(context);},
            child: Text(
              "Log out",
              style: TextStyle(
                  fontSize: 20, color: Colors.red[600], fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
