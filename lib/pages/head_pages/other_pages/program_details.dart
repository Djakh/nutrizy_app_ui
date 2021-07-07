import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/navigation1_widgets/add_to_cart_green_button.dart';

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
      body: Container(
        child: Stack(
          children: [
            Container(),
            Positioned(
              child: Container(
                height: 253,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/program_details_image.png'))),
              ),
            ),
            Positioned.fill(
              top: 220,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personal Training Monthly Plan",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "January, 19 2021",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(thickness: 0.5, color: Colors.grey, height: 45),
                        Text(
                          "Plan Description",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Have an exclusive one-on-one online personal training program for a month.",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                              height: 1.6),
                        ),
                        Text(
                          "Yoga Poses\nInjury Rehabiliytation\nPre-Natal Yoga\nStrength Training\nSpesific Aesthetic or performance Goals\n                          ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                              height: 1.6),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kick start your workout journey from the comfort",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
                top: 480,
                child: Container(
                  height: 60,
                  
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3,000 AED",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        AddToCartGreenButton(),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
