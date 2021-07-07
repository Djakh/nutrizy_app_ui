import 'package:flutter/cupertino.dart';
import 'package:nutrizy_app_ui/pages/head_pages/Navigation_pages/navigation0_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/Navigation_pages/navigation1_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/Navigation_pages/navigation2_page.dart';

class HeadPageProvider extends ChangeNotifier {

int _currentNumber = 0;


void changeCurrnetNumber (int current) {
_currentNumber = current;
notifyListeners();
}

Widget getCurrentPage () {
switch (_currentNumber) {
  case 0:
    return Navigation0Page();
    case 1:
    return Navigation1Page();
    case 2:
    return Navigation2Page();

  default:
  return Navigation0Page();
}
}

Widget getCurrentAppBar () {
switch (_currentNumber) {
  case 0:
    return Navigation0AppBar();
    case 1:
    return Navigation1AppBar();
    case 2:
    return Navigation2AppBar();
   
  default:
  return Navigation0AppBar();
}
}

get getCurrentNumber => _currentNumber;


}