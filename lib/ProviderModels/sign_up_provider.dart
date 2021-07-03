import 'package:flutter/material.dart';

class SignUpProviderModel extends ChangeNotifier{


bool _isValidName = false;
bool _isValidNumber = false;




void setIsValidName (bool status) {
  _isValidName = status;
   notifyListeners();
 
}

void setIsValidNumber (bool status) {
  _isValidNumber = status;
notifyListeners();
 
}





bool get getIsValidName =>_isValidName;
bool get getIsValidNumber =>_isValidNumber;

}