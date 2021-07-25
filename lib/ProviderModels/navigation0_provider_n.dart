import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/positioned_card.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation0_n/analytics_page.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation0_n/appointment_page.dart';

class Navigation0ProviderN extends ChangeNotifier {
  List<Widget> _cardList = [
    Container(
      height: 240,
      width: double.infinity,
    ),
    PositionedCard(
      bottomMargin: 0,
      index: 0,
      myColor: Colors.blueAccent,
      image: 'assets/yazmin.jpg',
      name: "Yazmin Shaikh",
      information: "22 Years | Female",
    ),
    PositionedCard(
      bottomMargin: 10,
      index: 1,
      myColor: Colors.blueAccent,
      image: 'assets/yazmin.jpg',
      name: "Yazmin Shaikh",
      information: "22 Years | Female",
    ),
    PositionedCard(
      bottomMargin: 20,
      index: 2,
      myColor: Colors.blueAccent,
      image: 'assets/yazmin.jpg',
      name: "Yazmin Shaikh",
      information: "22 Years | Female",
    ),
    PositionedCard(
      bottomMargin: 30,
      index: 3,
      myColor: Colors.blueAccent,
      image: 'assets/yazmin.jpg',
      name: "Yazmin Shaikh",
      information: "22 Years | Female",
    ),
    PositionedCard(
      bottomMargin: 40,
      index: 4,
      myColor: Colors.blueAccent,
      image: 'assets/yazmin.jpg',
      name: "Yazmin Shaikh",
      information: "22 Years | Female",
    ),
  ];
  bool _isClickedAppoinment = false;
  bool _isClickedAnaliytics = false;
  int _myInt = 0;

  Widget getCurrentWidgetPage() {
    switch (_myInt) {
      case 0:
        return AppointmentPage();
      case 1:
        return AnalyticsPage();

      default:
        return AppointmentPage();
    }
  }

  void chooseAppoinment() {
    _isClickedAppoinment = true;
    _isClickedAnaliytics = false;
    _myInt = 0;
    notifyListeners();
  }

  void chooseAnaliytics() {
    _isClickedAnaliytics = true;
    _isClickedAppoinment = false;
    _myInt = 1;
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
