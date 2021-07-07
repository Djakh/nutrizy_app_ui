import 'package:flutter/cupertino.dart';

class Navigation1Provider extends ChangeNotifier {


int _firstCart = 0;
int _secondCart = 0;
int _thirdCart = 0;
int _forthCart = 0;


void changeFirstAddCart () {

if(_firstCart == 0) {
  _firstCart ++;
} else {
  _firstCart = 0;
}
notifyListeners();
}

void changeSecondAddCart () {
if(_secondCart == 0) {
  _secondCart ++;
} else {
  _secondCart = 0;
}
notifyListeners();
}
void changeThirdAddCart () {
if(_thirdCart == 0) {
  _thirdCart ++;
} else {
  _thirdCart = 0;
}
notifyListeners();
}
void changeForthAddCart () {
if(_forthCart == 0) {
  _forthCart ++;
} else {
  _forthCart = 0;
}
notifyListeners();
}

int getCertainCartAmmount (int index) {
switch (index) {
  case 0:
    return _firstCart;
    case 1:
    return _secondCart;
    case 2:
    return _thirdCart;
    case 3:
    return _forthCart;
   
  default:
  return 0;
}

}
void increaseCart (int index) {
switch (index) {
  case 0:
_firstCart++;
    break;
    case 1:
_secondCart++;
    break;
    case 2:
_thirdCart++;
    break;
    case 3:
_forthCart++;
    break;
   
  default:
  
}
notifyListeners();
}

void decreaseCart (int index) {
switch (index) {
  case 0:
  if(_firstCart > 0) {
    _firstCart--;
  }

    break;
    case 1:
if(_secondCart > 0) {
    _secondCart--;
  }
    break;
    case 2:
if(_thirdCart > 0) {
    _thirdCart--;
  }
    break;
    case 3:
if(_forthCart > 0) {
    _forthCart--;
  }
    break;
   
  default:
  
}
notifyListeners();
}





get getCommonNumber => _firstCart + _secondCart + _thirdCart + _forthCart;
}