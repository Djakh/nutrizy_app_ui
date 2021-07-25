import 'package:flutter/material.dart';

import 'analytics_image_card.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnalyticsImageCard(
          myImage: 'assets/daily_tasks.png',
        ),
        SizedBox(height: 20,),
        AnalyticsImageCard(
          myImage: 'assets/total_patients_managed.png',
        ),
      ],
    );
  }
}
