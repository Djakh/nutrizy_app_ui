import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/positioned_card.dart';

class Navigation0Provider extends ChangeNotifier {
  List<Widget> _cardList = [
    Container(
      height: 240,
      width: double.infinity,
    ),
    PositionedCard(
      bottomMargin: 0,
      index: 0,
      myColor: Colors.green[600],
      image: 'assets/Djon.png',
      name: "John Terry",
      information: "32 Years | Dietitics / Nutrition.",
    ),
     PositionedCard(
      bottomMargin: 10,
      index: 1,
      myColor: Colors.green[600],
      image: 'assets/Djon.png',
      name: "John Terry",
      information: "32 Years | Dietitics / Nutrition.",
    ),
     PositionedCard(
      bottomMargin: 20,
      index: 2,
      myColor: Colors.green[600],
      image: 'assets/Djon.png',
      name: "John Terry",
      information: "32 Years | Dietitics / Nutrition.",
    ),
     PositionedCard(
      bottomMargin: 30,
      index: 3,
      myColor: Colors.green[600],
      image: 'assets/Djon.png',
      name: "John Terry",
      information: "32 Years | Dietitics / Nutrition.",
    ),
     PositionedCard(
      bottomMargin: 40,
      index: 4,
      myColor: Colors.green[600],
      image: 'assets/Djon.png',
      name: "John Terry",
      information: "32 Years | Dietitics / Nutrition.",
    ),
 
  ];
  bool _isClickedAppoinment = false;
  bool _isClickedAnaliytics = false;

  void chooseAppoinment() {
    _isClickedAppoinment = true;
    _isClickedAnaliytics = false;
    notifyListeners();
  }

  void chooseAnaliytics() {
    _isClickedAnaliytics = true;
    _isClickedAppoinment = false;
    notifyListeners();
  }

  void removeCards(index) {
    _cardList.removeAt(index);
    ChangeNotifier();
  }

  get getIsClickedAppoinment => _isClickedAppoinment;
  get getIsClickedAnaliytics => _isClickedAnaliytics;
  get getCardList => _cardList;
}
