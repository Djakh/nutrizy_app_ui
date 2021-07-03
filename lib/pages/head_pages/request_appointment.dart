import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/request_appointment_provider.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/row_back_title_menu.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/request/bottom_sheet.dart';

import 'package:nutrizy_app_ui/widgets/head_widgets/request/request_appointment_card_part1.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/request/request_appointment_card_part2.dart';
import 'package:nutrizy_app_ui/widgets/head_widgets/request/request_appointment_description_card.dart';
import 'package:provider/provider.dart';

class RequestAppointment extends StatelessWidget {
  const RequestAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<RequestAppointmentProvider>(context);
    return Scaffold(
      key: _modelProvider.getGlobalKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white10,
          centerTitle: true,
          title: RowBackTitleIcon(
            text: "My Nutritionist",
            iconOf: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 37,
                          color: Colors.grey[800],
                        ))),),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(27)),
              child: Container(
                height: 216,
                width: double.infinity,
                child: Card(
                    elevation: 0,
                    child: Column(children: [
                      RequestAppointmentCardPart1(),
                      SizedBox(height: 18),
                      Divider(
                        color: Colors.grey,
                      ),
                      RequestAppointmentCardPart2(),
                    ])),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Experience",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(27)),
              child: Container(
                height: 130,
                width: double.infinity,
                child: Card(
                    elevation: 0, child: RequestAppointmentDescriptionCard()),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Location",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 15),
            MapAsset(),
            SizedBox(height: 50),
            RoundedStretchButton(
                color: Colors.blueAccent[700],
                text: "Request For Appointment",
                function: () {
                  showModalBottomSheet<dynamic>(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetRequest();
                      });
                }),
            SizedBox(height: 30),
          ]),
        )),
      ),
    );
  }
}

class MapAsset extends StatelessWidget {
  const MapAsset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: AssetImage("assets/map.png"))),
    );
  }
}
