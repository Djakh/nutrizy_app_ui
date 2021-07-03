import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/models/beginPagesModel.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/container_image.dart';

class BeginWrapPages extends StatelessWidget {
  final int index;

  const BeginWrapPages({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(slideList[index].image))),
        ),
        
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child:  Text(
              slideList[index].text,
              style: const TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}