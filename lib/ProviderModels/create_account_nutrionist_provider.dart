import 'package:flutter/cupertino.dart';

class CreateAccountNutrionistProvider extends ChangeNotifier {
  bool _firstBool = false;
  bool _secondBool = false;
  bool _isValidate = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void updateScreen() {
    _isValidate = _formKey.currentState!.validate();
    notifyListeners();
  }


  void changeFirstBool() {
    _firstBool = true;
    _secondBool = false;

    notifyListeners();
  }

  void changeSecondBool() {
    _secondBool = true;
    _firstBool = false;

    notifyListeners();
  }

  get getFirstBool => _firstBool;
  get getSecondBool => _secondBool;
  get getIsValidate => _isValidate;
  get getFormKey => _formKey;
}
