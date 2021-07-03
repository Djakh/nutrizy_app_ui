import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/models/detail_pages_model.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/first_second_detail_pages.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/forth_detail_page.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/third_detail_page.dart';

class DetailPagesProvider extends ChangeNotifier {
  double _progressValue = 0.25;
  bool _isChacked1 =false;
  bool _isChacked2 =false;
  bool _isChacked3 =false;
  bool _isChacked4 =false;


void changeIsChacked1(bool? selected) {
_isChacked1 = selected!;
notifyListeners();
}
void changeIsChacked2(bool? selected) {
_isChacked2 = selected!;
notifyListeners();
}
void changeIsChacked3(bool? selected) {
_isChacked3 = selected!;
notifyListeners();
}
void changeIsChacked4(bool? selected) {
_isChacked4 = selected!;
notifyListeners();
}
  void changeProgressValue() {
    if (_progressValue != 1) {
      _progressValue = _progressValue + 0.25;
    } else {
      _progressValue = 0.25;
    }
    notifyListeners();
  }

  Widget getPage() {
    int r = (_progressValue * 1000).round();

    switch (r) {
      case 500:
        return FirstSecondDetailPages(
          color: detailSlideList[1].color,
          queue: detailSlideList[1].queue,
          question: detailSlideList[1].question,
          hint: detailSlideList[1].hint,
          icon: detailSlideList[1].icon,
        );
      case 750:
        return ThirdDetailPages(
          color: detailSlideList[2].color,
          queue: detailSlideList[2].queue,
          question: detailSlideList[2].question,
          hint: detailSlideList[2].hint,
          icon: detailSlideList[2].icon,
        );
      case 1000:
        return ForthDetailPages(
          color: detailSlideList[3].color,
          queue: detailSlideList[3].queue,
          question: detailSlideList[3].question,
          hint: detailSlideList[3].hint,
          icon: detailSlideList[3].icon,
        );
      default:
        return FirstSecondDetailPages(
            color: detailSlideList[0].color,
            queue: detailSlideList[0].queue,
            question: detailSlideList[0].question,
            hint: detailSlideList[0].hint,
            icon: detailSlideList[0].icon);
    }
  }

  get getProgressvalue => _progressValue;
  get getIsChacked1 => _isChacked1;
  get getIsChacked2 => _isChacked2;
  get getIsChacked3 => _isChacked3;
  get getIsChacked4 => _isChacked4;
}
