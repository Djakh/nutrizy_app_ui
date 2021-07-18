import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';

class CreateAccountNutritionist extends StatelessWidget {
  const CreateAccountNutritionist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.indigo[50],
        centerTitle: true,
        title:
            RowBackTitleIcon(mySize: 32, text: "Register", iconOf: SizedBox()),
      ),
      body: SingleChildScrollView(
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
                            "Enter OTP for verification",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Enter OTP",
                          ),
                         
                          // TextFormVerifyMobile(
                          //     ),
                          SizedBox(
                            height: 100,
                          ),
                          
                          
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
    );
  }
}

