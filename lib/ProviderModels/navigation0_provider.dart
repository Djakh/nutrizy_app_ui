import 'package:flutter/cupertino.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/positioned_card.dart';

class Navigation0Provider extends ChangeNotifier {
  
  List<Widget> _cardList = [
    Container(height: 240,
    width: double.infinity,
    ),
    PositionedCard(bottomMargin: 0, index: 0),
    PositionedCard(bottomMargin: 10, index: 1),
    PositionedCard(bottomMargin: 20, index: 2),
    PositionedCard(bottomMargin: 30, index: 3),
    PositionedCard(bottomMargin: 40, index: 4)
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
