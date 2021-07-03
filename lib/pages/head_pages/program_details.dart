import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';

class ProgramDetails extends StatelessWidget {
  const ProgramDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: RowBackTitleIcon(
            text: "Program Details",
            iconOf: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 37,
                  color: Colors.grey[800],
                ))),
      ),
      body: Stack(
        children: [
          Container(),
          Positioned(
            top: 18,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/program_details_image.png'))),
            ),
          ),
          
          Positioned(
            
                      child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(25))),
              child: Column(
                children: [
                  Text(
                    "Personal Training Monthly Plan",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
