import 'package:flutter/material.dart';

class DetailPagesModel {
  final color;
  final  icon;
  final String queue;
  final String question;
  final String hint;

  DetailPagesModel(this.color, this.queue, this.question, this.hint, this.icon);



}

final List<DetailPagesModel> detailSlideList = [
  DetailPagesModel(Colors.indigo, "1", "How much water does your body need daily?", "Daily water intake in Liters", Icons.local_drink_sharp,),
  DetailPagesModel(Colors.green, "2", "How many calories does your favorite food have?", "What do you eat today?", Icons.restaurant),
  DetailPagesModel(Colors.red, "3", "Do you think you are a overweight?", "Gender", Icons.monitor_weight_outlined,),
  DetailPagesModel(Colors.orange[400], "4", "What is your goal?", "Loose wight", Icons.star_border_outlined),
];

//  Icon(
//               Icons.local_drink_rounded,
//               color: color,
//               size: 50,
//             ),