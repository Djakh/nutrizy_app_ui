import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class RequestAppointmentProvider extends ChangeNotifier {
bool _firstBool = false;
bool _secondBool= false;
bool _thirdBool = false;
String _dateCount = '';
String _range = '';
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


void changeFirstBool() {
_firstBool = true;
_secondBool= false;
_thirdBool = false;
notifyListeners();
}
void changeSecondBool() {
_secondBool= true;
_firstBool = false;
_thirdBool = false;
notifyListeners();
}

void changeThirdBool() {
_thirdBool = true;
_firstBool = false;
_secondBool= false;
notifyListeners();
}

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      }
    notifyListeners();
  }

get getFirstBool => _firstBool;
get getSecondBool => _secondBool;
get getThirdBool => _thirdBool;
get getGlobalKey => _scaffoldKey;

}