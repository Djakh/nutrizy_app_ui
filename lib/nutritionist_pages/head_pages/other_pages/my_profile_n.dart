import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';

import '../../../route.generator.dart';

class MyProfileN extends StatelessWidget {
  const MyProfileN({Key? key}) : super(key: key);

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
            mySize: 25,
            text: "My Profile",
            iconOf: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[400],
                radius: 22,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.settings_page);
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        size: 25,
                        color: Colors.grey[800],
                      )),
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              CenterImageEditProfile(),
              Text(
                'Personal Info',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17.0, vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dietitics/Nutrition.',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Post Graduate Diploma in Sports Nutrition \n(20 years as a specialist)',
                            style: TextStyle(
                              height: 1.4,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Professional Experience',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Container(
                  width: double.infinity,
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17.0, vertical: 22),
                      child: Text(
                        'Hi, i am a Gold Medalist and has been\nworking in the field of Diet & Nutrition for\nthe past 20 years. Specializes in weight\nmanagement, lifestyle diseases like\nDiabetes, Child Nutrition, and various other\nhealth problems',
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CenterImageEditProfile extends StatelessWidget {
  const CenterImageEditProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 33,
            backgroundImage: AssetImage('assets/Djon.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'John Terry',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'JohnTerry@Gmail.com',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            height: 35,
            onPressed: () {},
            child: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.blueAccent[400], fontSize: 15),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: Colors.blueAccent[400]!,
                  width: 1,
                )),
          )
        ],
      ),
    );
  }
}
