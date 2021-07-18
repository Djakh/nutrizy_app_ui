class ChooseLanguageModel {
  final String flag;
  final String text;

  ChooseLanguageModel({required this.flag, required this.text});
}

List<ChooseLanguageModel> listLanguageModel = [
  ChooseLanguageModel(flag: 'assets/usa.jpg', text: "English"),
  ChooseLanguageModel(flag: 'assets/russia.jpg', text: "Russian"),
  ChooseLanguageModel(flag: 'assets/german.jpg', text: "German")
];

class ChooseCountryModel {
  final String text;

  ChooseCountryModel({required this.text});
}

List<ChooseCountryModel> listCountryModel = [
  ChooseCountryModel( text: "USA"),
  ChooseCountryModel( text: "Russia"),
  ChooseCountryModel( text: "Germany")
];

class ChooseCurrencyModel {
  final String text;

  ChooseCurrencyModel({required this.text});
}

List<ChooseCurrencyModel> listCurrencyModel = [
  ChooseCurrencyModel( text: "USD"),
  ChooseCurrencyModel( text: "AED"),
  ChooseCurrencyModel( text: "SUM")
];