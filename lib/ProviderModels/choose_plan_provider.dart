import 'package:flutter/cupertino.dart';

class ChoosePlanProvider extends ChangeNotifier {
bool _firstBool = false;
bool _secondBool= false;
bool _thirdBool = false;
 



void changeFirstBool() {
_firstBool = true;
_secondBool= false;
_thirdBool = false;
notifyListeners();
}
void changeSecondBool() {
_secondBool= true;
_firstBool = false;
_thirdBool = false;
notifyListeners();
}

void changeThirdBool() {
_thirdBool = true;
_firstBool = false;
_secondBool= false;
notifyListeners();
}

get getFirstBool => _firstBool;
get getSecondBool => _secondBool;
get getThirdBool => _thirdBool;


}