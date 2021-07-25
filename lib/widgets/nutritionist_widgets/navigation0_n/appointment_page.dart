import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation0_provider_n.dart';
import 'package:provider/provider.dart';

import 'icon_card.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<Navigation0ProviderN>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
            alignment: Alignment.center, children: _modelProvider.getCardList),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconCard(
              myIcon: Icons.people,
              mainText: "Patients",
              text: "16 new patients",
              myColor: Colors.red[200],
            ),
            IconCard(
              myIcon: Icons.library_books,
              mainText: "Billing",
              text: "3 Payment Done",
              myColor: Colors.blueAccent[100],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        IconCard(
          myIcon: Icons.folder,
          mainText: "Records",
          text: "5 new records",
          myColor: Colors.yellow[600],
        ),
      ],
    );
  }
}
