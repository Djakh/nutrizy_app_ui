import 'package:flutter/cupertino.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/navigation0_page_n.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/navigation1_page_n.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/navigation2_page_n.dart';


class HeadPageProviderN extends ChangeNotifier {

int _currentNumber = 0;


void changeCurrnetNumber (int current) {
_currentNumber = current;
notifyListeners();
}

Widget getCurrentPage () {
switch (_currentNumber) {
  case 0:
    return Navigation0PageN();
    case 1:
    return Navigation1PageN();
    case 2:
    return Navigation2PageN();

  default:
  return Navigation0PageN();
}
}

Widget getCurrentAppBar () {
switch (_currentNumber) {
  case 0:
    return Navigation0AppBarN();
    case 1:
    return Navigation1AppBarN();
    case 2:
    return Navigation2AppBarN();
   
  default:
  return Navigation0AppBarN();
}
}

get getCurrentNumber => _currentNumber;


}