import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/request_appointment_provider.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/has_been_sent.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/rounded_stretch_button.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'request_appointment_radio_container.dart';

class BottomSheetRequest extends StatelessWidget {
  const BottomSheetRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<RequestAppointmentProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Center(
            child: Text(
              "Select Date and Time",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(height: 18),
          Container(
            height: 350,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: SfDateRangePicker(
                  onSelectionChanged: _modelProvider.onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.range,
                  initialSelectedRange: PickerDateRange(
                      DateTime.now().subtract(const Duration(days: 4)),
                      DateTime.now().add(const Duration(days: 3))),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Slot Available"),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RequestappointmentRadioContainer(
                colorOFBorder: Colors.grey[500],
                colorOFText: Colors.grey[500],
                text: "10:30 AM",
                boolOfRadio: _modelProvider.getFirstBool,
                function: () {
                  _modelProvider.changeFirstBool();
                },
              ),
              RequestappointmentRadioContainer(
                colorOFBorder: Colors.green,
                colorOFText: Colors.black,
                text: "12:30 PM",
                boolOfRadio: _modelProvider.getSecondBool,
                function: () {
                  _modelProvider.changeSecondBool();
                },
              ),
              RequestappointmentRadioContainer(
                colorOFBorder: Colors.green,
                colorOFText: Colors.black,
                text: "02:30 PM",
                boolOfRadio: _modelProvider.getThirdBool,
                function: () {
                  _modelProvider.changeThirdBool();
                },
              )
            ],
          ),
          SizedBox(height: 28),
          RoundedStretchButton(
            color: Colors.blueAccent,
            function: () async {
              Navigator.pop(context);
              Navigator.of(_modelProvider.getGlobalKey.currentContext!).push(PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) {
                    return Material(
                        type: MaterialType.transparency, child: HasBeenSent());
                  }));

              await Future.delayed(Duration(seconds: 1), () {
                Navigator.pop(_modelProvider.getGlobalKey.currentContext!);
              });
            },
            text: 'Proceed',
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
