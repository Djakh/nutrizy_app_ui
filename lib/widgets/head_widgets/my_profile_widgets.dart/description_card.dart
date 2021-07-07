import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wish to Loose Weight',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 14),
              Text(
                'From last 3 months My weight had increased\n15 kgs after an accident. Please  helped me\nget back to shape.',
                style: TextStyle(
                  height: 1.7,
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
