import 'package:flutter/material.dart';

import 'package:nutrizy_app_ui/shared/constants.dart';

class TextFormRegisterMobile extends StatelessWidget {
  const TextFormRegisterMobile(
      {Key? key, required this.formKey, required this.controller})
      : super(key: key);
  final TextEditingController controller;
  final formKey;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextFormField(
                  readOnly: true,
                  controller: controller,
                  obscureText: false,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  decoration: textInputDecoration.copyWith(
                 
              
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[400]),
                  ),
               
                ),
              ),
              Expanded(
               flex: 3,
                child: TextFormField(
                  
                  obscureText: false,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  decoration: textInputDecoration.copyWith(
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[400]),
                  ),
                  
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
