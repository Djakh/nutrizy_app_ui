import 'package:flutter/cupertino.dart';

class Navigation1Provider extends ChangeNotifier {
int _numberOfItem = 0;
bool _firstBoolCart = false;
bool _secondBoolCart = false;
bool _thirdBoolCart = false;
bool _forthBoolCart = false;


void changeFirstAddCart () {
_firstBoolCart = !_firstBoolCart;
if(_firstBoolCart) {
  _numberOfItem ++;
} else {
  _numberOfItem --;
}
notifyListeners();
}

void changeSecondAddCart () {
_secondBoolCart = !_secondBoolCart;
if(_secondBoolCart) {
  _numberOfItem ++;
} else {
  _numberOfItem --;
}
notifyListeners();
}
void changeThirdAddCart () {
_thirdBoolCart = !_thirdBoolCart;
if(_thirdBoolCart) {
  _numberOfItem ++;
} else {
  _numberOfItem --;
}
notifyListeners();
}
void changeForthAddCart () {
_forthBoolCart = !_forthBoolCart;
if(_forthBoolCart) {
  _numberOfItem ++;
} else {
  _numberOfItem --;
}
notifyListeners();
}

get getfirstBoolCart => _firstBoolCart;
get getsecondBoolCart => _secondBoolCart;
get getThirdBoolCart => _thirdBoolCart;
get getForthBoolCart => _forthBoolCart;
get getNumberOfItem => _numberOfItem;
}