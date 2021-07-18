import 'package:flutter/cupertino.dart';
import 'package:nutrizy_app_ui/models/settings_model.dart';

class SettingsProvider extends ChangeNotifier {
  String _language = '';
  String _flag = '';
  String _country = '';
  String _currency = '';

  void selectLanguage(int value) {
    switch (value) {
      case 0:
        _language = listLanguageModel[0].text;
        _flag = listLanguageModel[0].flag;
        break;
      case 1:
        _language = listLanguageModel[1].text;
        _flag = listLanguageModel[1].flag;
        break;
      case 2:
        _language = listLanguageModel[2].text;
        _flag = listLanguageModel[2].flag;
        break;
      default:
    }
    notifyListeners();
  }

  void selectCountry(int value) {
    switch (value) {
      case 0:
        _country = listCountryModel[0].text;

        break;
      case 1:
        _country = listCountryModel[1].text;
        break;
      case 2:
        _country = listCountryModel[2].text;
        break;
      default:
    }
    notifyListeners();
  }

void selectCurrency(int value) {
    switch (value) {
      case 0:
        _currency = listCurrencyModel[0].text;

        break;
      case 1:
        _currency = listCurrencyModel[1].text;
        break;
      case 2:
        _currency = listCurrencyModel[2].text;
        break;
      default:
    }
    notifyListeners();
  }

  get getLanguage => _language;
  get getFlag => _flag;
  get getCountry => _country;
  get getCurrency => _currency;
}
