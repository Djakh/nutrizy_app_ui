import 'package:flutter/cupertino.dart';

class BeginPagesProviderModel extends ChangeNotifier{
int _current = 0;
bool _isValidEmail = false;
bool _isValidPassword = false;


void changeCurrentStatus (int index) {
  _current = index;
  notifyListeners();
}

void setIsValidEmail (bool status) {
  _isValidEmail = status;
   notifyListeners();
 
}

void setIsValidPassword (bool status) {
  _isValidPassword = status;
notifyListeners();
 
}





int get getCurrent =>_current;
bool get getIsValidEmail =>_isValidEmail;
bool get getIsValidPassword =>_isValidPassword;

}