import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/detail_pages_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:provider/provider.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class ForthDetailPages extends StatefulWidget {
  ForthDetailPages(
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
  _ForthDetailPagesState createState() => _ForthDetailPagesState();
}

class _ForthDetailPagesState extends State<ForthDetailPages> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<DetailPagesProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: widget.color,
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: widget.queue,
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
        SizedBox(height: 15),
        Text(
          widget.question,
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 45),
        BorderCheckBox()
      ],
    );
  }
}

class BorderCheckBox extends StatelessWidget {
  const BorderCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<DetailPagesProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: _modelProvider.getIsChacked1
                  ? Colors.indigo[50]
                  : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Loose Weight",
                  style: TextStyle(color: Colors.grey[800], fontSize: 20),
                ),
              ),
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RoundCheckBox(
                  onTap: (bool? selected) {
                    _modelProvider.changeIsChacked1(selected);
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: _modelProvider.getIsChacked2
                  ? Colors.indigo[50]
                  : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Improve Eating Habits",
                  style: TextStyle(color: Colors.grey[800], fontSize: 20),
                ),
              ),
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RoundCheckBox(
                  onTap: (bool? selected) {
                    _modelProvider.changeIsChacked2(selected);
                  },
                ),
              ),
            ],
          ),
        ),
          SizedBox(height: 10),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: _modelProvider.getIsChacked3
                  ? Colors.indigo[50]
                  : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Individualized meal plans",
                  style: TextStyle(color: Colors.grey[800], fontSize: 19),
                ),
              ),
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RoundCheckBox(
                  onTap: (bool? selected) {
                    _modelProvider.changeIsChacked3(selected);
                  },
                ),
              ),
            ],
          ),
        ),
          SizedBox(height: 10),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
              color: _modelProvider.getIsChacked4
                  ? Colors.indigo[50]
                  : Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Improve Degistive Issues",
                  style: TextStyle(color: Colors.grey[800], fontSize: 19),
                ),
              ),
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RoundCheckBox(
                  onTap: (bool? selected) {
                    _modelProvider.changeIsChacked4(selected);
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        RoundedStretchButton(text: "Get Started", color: Colors.green[600], function: () { 
          _modelProvider.changeProgressValue();
          Navigator.of(context).pushNamed(RouteGenerator.choose_plan);},)
      ],
    );
  }
}
