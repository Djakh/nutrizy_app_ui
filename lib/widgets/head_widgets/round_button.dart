import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/head_page_Provider.dart';
import 'package:provider/provider.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({ Key? key, required this.text, required this.function,required this.isClicked }) : super(key: key);

final String text;
final Function function;
final bool isClicked;
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<HeadPageProvider>(context);
    return FlatButton(
      height: 35,
      minWidth: 60,
      color: isClicked? Colors.black :Colors.white,
      onPressed: () {function();} ,
      child: Text(
       text,
        style: TextStyle(color: isClicked? Colors.white : Colors.grey[800], fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(50)),
    );
  }
}