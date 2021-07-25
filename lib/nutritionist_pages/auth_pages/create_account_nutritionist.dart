import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/create_account_nutrionist_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_border_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/create_account_widgets/info_radio_container.dart';
import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/create_account_widgets/info_text_field.dart';
import 'package:provider/provider.dart';

class CreateAccountNutritionist extends StatefulWidget {
  const CreateAccountNutritionist({Key? key}) : super(key: key);

  @override
  _CreateAccountNutritionistState createState() =>
      _CreateAccountNutritionistState();
}

class _CreateAccountNutritionistState extends State<CreateAccountNutritionist> {
 

@override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final _modelProvider =
        Provider.of<CreateAccountNutrionistProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.indigo[50],
        centerTitle: true,
        title: RowBackTitleIcon(
            mySize: 32, text: "Create Account", iconOf: SizedBox()),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _modelProvider.getFormKey,
          child: Column(
            children: [
              Container(
                color: Colors.indigo[50],
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fill in your basic details to get started",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InfoTextField(
                                hintText: 'Enter Full name', endIcon: null),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InforRadioContainer(
                                  text: "Male",
                                  boolOfRadio: _modelProvider.getFirstBool,
                                  function: () {
                                    _modelProvider.changeFirstBool();
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InforRadioContainer(
                                  text: "Female",
                                  boolOfRadio: _modelProvider.getSecondBool,
                                  function: () {
                                    _modelProvider.changeSecondBool();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InfoTextField(
                                hintText: 'Enter Email ID', endIcon: null),
                            SizedBox(
                              height: 20,
                            ),
                            InfoTextField(
                              hintText: 'Specialisation',
                              endIcon: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.blue[50],
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InfoTextField(hintText: 'Pincode', endIcon: null),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: InfoTextField(
                                        hintText: 'State', endIcon: null)),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                    child: InfoTextField(
                                        hintText: 'City', endIcon: null)),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            _modelProvider.getIsValidate
                  ? RoundedStretchButton(
                      color: Colors.blueAccent,
                      text: 'Register Now',
                      function: () {
                           Navigator.of(context).pushNamed(RouteGenerator.head_page_n);
                      })
                  : RoundedBorderStretchButton(
                      text: 'Register', function: () {
                     
                      })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
