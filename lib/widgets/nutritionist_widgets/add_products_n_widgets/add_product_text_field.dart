import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/add_products_provider_n.dart';
import 'package:provider/provider.dart';

class AddProductTextField extends StatelessWidget {
  const AddProductTextField(
      {Key? key,
      required this.myMaxLines,
      required this.myHintText,
      required this.function,required this.myBool})
      : super(key: key);

  final int myMaxLines;
  final String myHintText;
  final Function function;
  final bool myBool;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        
        TextFormField(
          maxLines: myMaxLines,
          onChanged: (value) =>
              {value == '' ? function(false) : function(true),},
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey[200]!, width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey[200]!, width: 2.0)),
              fillColor: myBool ? Colors.blue[50] : Colors.grey[200],
              filled: true,
              hintText: myHintText,
              hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
        ),
      ],
    );
  }
}
