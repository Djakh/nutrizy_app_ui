import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/create_account_nutrionist_provider.dart';
import 'package:nutrizy_app_ui/shared/constants.dart';
import 'package:provider/provider.dart';

class InfoTextField extends StatefulWidget {
  const InfoTextField({Key? key, required this.hintText, required this.endIcon})
      : super(key: key);
  final hintText;
  final endIcon;
  

  @override
  _InfoTextFieldState createState() => _InfoTextFieldState();
}

class _InfoTextFieldState extends State<InfoTextField> {
  bool myBool = false;


  @override
  Widget build(BuildContext context) {
    final _modelProvider =
        Provider.of<CreateAccountNutrionistProvider>(context);

    return TextFormField(
      validator: (value) => value!.isEmpty ? "Please enter information" : null,
      obscureText: false,
      style: const TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      onEditingComplete: () {},
      onChanged: (value) => {value != ''
          ? myBool = true
          : myBool = false,
          _modelProvider.updateScreen()
          },
      decoration: infoTextDecoration.copyWith(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: myBool
                      ? Colors.blueAccent
                      : Colors.grey,
                  width: 2.0)),
          hintText: widget.hintText,
          suffix: widget.endIcon),
    );
  }
}
