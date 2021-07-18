import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/settiings_provider.dart';
import 'package:nutrizy_app_ui/models/settings_model.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/settings_widgets/settings_container_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/settings_widgets/settings_menu_button.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
          mySize: 25,
          text: "Settings", iconOf: SizedBox()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SettingsMenuButton(
                function: (value) {
                  _modelProvider.selectLanguage(value);
                },
                name: "Language",
                myList: listLanguageModel,
                myWidget: _modelProvider.getFlag == ''
                    ? SizedBox()
                    : Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(_modelProvider.getFlag))),
                      ),
                secondText: _modelProvider.getLanguage,
              ),
              SettingsMenuButton(
                function: (value) {
                  _modelProvider.selectCountry(value);
                },
                name: "Country",
                myList: listCountryModel,
                myWidget: SizedBox(),
                secondText: _modelProvider.getCountry,
              ),
              SettingsMenuButton(
                function: (value) {
                  _modelProvider.selectCurrency(value);
                },
                name: "Currency",
                myList: listCurrencyModel,
                myWidget: SizedBox(),
                secondText: _modelProvider.getCurrency,
              ),
              SizedBox(
                height: 35,
              ),
                Text(
                "Support",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SettingsContainerButton(text: 'Get help',),
              SettingsContainerButton(text: 'Give a feedback',),
              SizedBox(
                height: 35,
              ),
                Text(
                "Legal",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SettingsContainerButton(text: 'Terms of Service',),
              SettingsContainerButton(text: 'Privacy Policy',),
            ],
          ),
        ),
      ),
    );
  }
}
