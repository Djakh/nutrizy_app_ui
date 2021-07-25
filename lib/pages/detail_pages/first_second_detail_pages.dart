import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/detail_pages_provider.dart';
import 'package:nutrizy_app_ui/widgets/detail_widgets/text_form_detail.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_border_stretch_button.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class FirstSecondDetailPages extends StatelessWidget {
  const FirstSecondDetailPages(
      {Key? key,
      required this.color,
      required this.queue,
      required this.question,
      required this.hint,
      required this.icon})
      : super(key: key);
  final color;
  final icon;
  final String queue;
  final String question;
  final String hint;
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<DetailPagesProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: SizeConfig.w * 12.5,
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
                size: SizeConfig.w * 15,
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: SizeConfig.w * 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: queue,
                      style: TextStyle(
                        color: Colors.green,
                      )),
                  const TextSpan(
                    text: "/4",
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: SizeConfig.h * 7.5),
        Text(
          question,
          style: TextStyle(
              fontSize: SizeConfig.w * 11.5,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(height: SizeConfig.h * 22.5),
        TextFormDetail(
          hint: hint,
        ),
        SizedBox(
          height: SizeConfig.h * 140,
        ),
        RoundedBorderStretchButton(
          function: () {
            _modelProvider.changeProgressValue();
          },
          text: 'Next',
        )
      ],
    );
  }
}
