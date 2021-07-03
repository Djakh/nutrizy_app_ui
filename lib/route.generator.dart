import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/choose_plan.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/detail_page.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/create_account.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/sign_in.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/sign_up.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/successful_created.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/verification_page.dart';

import 'package:nutrizy_app_ui/pages/head_pages/head_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/program_details.dart';
import 'package:nutrizy_app_ui/pages/head_pages/request_appointment.dart';
import 'package:nutrizy_app_ui/pages/head_pages/test_page.dart';


import 'pages/begin_pages/begin_page0.dart';
import 'pages/begin_pages/initial_loading_page.dart';
import 'pages/begin_pages/choosing_position.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initalLoadingPage:
        return MaterialPageRoute(
          builder: (_) => const InitialLoadingPage(),
        );

      case beginPage0:
        return MaterialPageRoute(
          builder: (_) => const BeginPage0(),
        );

      case choosingPosition:
        return MaterialPageRoute(
          builder: (_) => const ChoosingPositon(),
        );
      case sign_in:
        return MaterialPageRoute(
          builder: (_) => const SignIn(),
        );
      case verification_page:
        return MaterialPageRoute(
          builder: (_) => const VerifivcationPage(),
        );
      case sign_up:
        return MaterialPageRoute(
          builder: (_) => const SignUp(),
        );
      case create_account:
        return MaterialPageRoute(
          builder: (_) => const CreateAccount(),
        );
      case successful_created:
        return MaterialPageRoute(
          builder: (_) => const SuccessfulCreated(),
        );
      case detail_page:
        return MaterialPageRoute(
          builder: (_) => const DetailPage(),
        );
      case choose_plan:
        return MaterialPageRoute(
          builder: (_) => const ChoosePlan(),
        );
      case head_page:
        return MaterialPageRoute(
          builder: (_) => const HeadPage(),
        );
          case request_appointment:
        return MaterialPageRoute(
          builder: (_) =>  RequestAppointment(),
        );
        case test_page:
        return MaterialPageRoute(
          builder: (_) =>  TestPage(),
        );
        case program_details:
        return MaterialPageRoute(
          builder: (_) =>  ProgramDetails(),
        );
      default:
        throw Exception("Route not found");
    }
  }

  static const String initalLoadingPage = '/program_details';
  static const String beginPage0 = '/beginPage0';
  static const String choosingPosition = '/choosing_position';
  static const String sign_in = '/sign_in';
  static const String successful_created = '/successful_created';
  static const String sign_up = '/sign_up';
  static const String create_account = '/create_account';
  static const String verification_page = '/verification_page';
  static const String detail_page = '/first_detail_page';
  static const String choose_plan = '/choose_plan';
  static const String head_page = '/head_page';
  static const String request_appointment = '/request_appointment';
  static const String test_page = '/test_page';
  static const String program_details = '/';


  
}
