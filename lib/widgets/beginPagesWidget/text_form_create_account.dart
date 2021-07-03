import 'package:flutter/material.dart';



import 'package:nutrizy_app_ui/shared/constants.dart';


class TextFormCreateAccount extends StatefulWidget {
  const TextFormCreateAccount({required this.formKey});
  final formKey;

  // final bool whichPage;
  @override
  _TextFormCreateAccount createState() => _TextFormCreateAccount();
}

class _TextFormCreateAccount extends State<TextFormCreateAccount> {
  final _passwordController = TextEditingController();

  final _reEnteredPasswordController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {

    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Enter Your Password",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            controller: _passwordController,
            decoration: textInputDecoration.copyWith(
                hintText: "Password",
                suffixIcon: const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                
                ),
            validator: (val) =>
                val!.length < 6 ? "Enter an valid password" : null,
            onChanged: (val) {},
          ),
          const SizedBox(
            height: 20.0,
          ),
         const Text(
            "Re-Enter Your Password",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      controller: _reEnteredPasswordController,
            decoration: textInputDecoration.copyWith(
                hintText: "Password",
                  suffixIcon:const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                
                ),                     
            validator: (val) =>
                val != _passwordController.text
                    ? "Re-Entered password is not equal to original password"
                    : null,
          ),
        ],
      ),
    );
  }
}
