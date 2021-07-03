import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/ProviderModels/sign_up_provider.dart';
import 'package:nutrizy_app_ui/shared/constants.dart';
import 'package:provider/provider.dart';

class TextFormSignUp extends StatefulWidget {
  const TextFormSignUp({required this.formKey});
   final formKey;
   
 // final bool whichPage;
  @override
  _TextFormSignUpState createState() => _TextFormSignUpState();
}

class _TextFormSignUpState extends State<TextFormSignUp> {
  final _nameController = TextEditingController();

  final _numberController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    
    final _modelProvider = Provider.of<SignUpProviderModel>(context);
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
       const    Text(
            "Your name" ,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          
          TextFormField(
            
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            controller: _nameController,
         
            decoration: textInputDecoration.copyWith(
              
                hintText: "Name",
                suffixIcon: Consumer<SignUpProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidName
                              ?const Icon(
                                  Icons.check_circle,
                                  size: 30,
                                )
                              :const  Icon(null), 
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!
                                .validate()) {
                              _modelProvider.setIsValidName(
                                  widget.formKey.currentState!
                                      .validate());
                            }
                          },
                        ))),
            validator: (val) => val!.isEmpty ? "Enter your name" : null,
            onChanged: (val) {},
          ),
          const SizedBox(
            height: 20.0,
          ),
         const  Text(
            "Enter your mobile number",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              obscureText: false,
            keyboardType: TextInputType.number,
            inputFormatters:  <TextInputFormatter>[
  FilteringTextInputFormatter.digitsOnly 
], // Only numbers can be entered
            controller: _numberController,
            decoration: textInputDecoration.copyWith(
                hintText:"Phone Number",
                suffixIcon: Consumer<SignUpProviderModel>(
                    builder: (_, value, __) => IconButton(
                          icon: value.getIsValidNumber
                              ?const Icon(
                                  Icons.check_circle,
                                  size: 30,
                                )
                              :const Icon(
                                 null
                                ),
                          color: Colors.green,
                          onPressed: () {
                            if (widget.formKey.currentState!
                                .validate()) {
                              _modelProvider.setIsValidNumber(
                                  widget.formKey.currentState!
                                      .validate());
                            }
                          },
                        ))),
            validator: (val) =>
                val!.length !=  12 ? "Enter a valid phone number" : null,
           
          ),
        ],
      ),
    );
  }
}
