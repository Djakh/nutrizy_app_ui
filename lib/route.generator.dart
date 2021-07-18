import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/auth_pages/create_account_nutritionist.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/choose_plan.dart';
import 'package:nutrizy_app_ui/pages/detail_pages/detail_page.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/create_account.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/sign_in.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/sign_up.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/successful_created.dart';
import 'package:nutrizy_app_ui/pages/begin_pages/verification_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/Navigation_pages/navigation3_page.dart';

import 'package:nutrizy_app_ui/pages/head_pages/other_pages/head_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/my_profile_page.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/program_details.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/request_appointment.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/settings_page.dart';
import 'package:nutrizy_app_ui/pages/test_page.dart';


import 'nutritionist_pages/auth_pages/register_doctor_page.dart';
import 'nutritionist_pages/auth_pages/sign_in_or_register_page.dart';
import 'nutritionist_pages/auth_pages/verify_otp_page.dart';

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
       case navigation3_page:
        return MaterialPageRoute(
          builder: (_) =>  Navigation3Page(),
        );
        case my_profile_page:
        return MaterialPageRoute(
          builder: (_) =>  MyProfilePage(),
        );
        case settings_page:
        return MaterialPageRoute(
          builder: (_) =>  SettingsPage(),
        );
        case sign_in_or_register_page:
        return MaterialPageRoute(
          builder: (_) =>  SignInOrRegisterPage(),
        );
        case register_doctor_page:
        return MaterialPageRoute(
          builder: (_) =>  RegisterDoctorPage(),
        );
        case veirfy_otp_page:
        return MaterialPageRoute(
          builder: (_) =>  VerifyOtpPage(),
        );
         case create_account_nutritionist:
        return MaterialPageRoute(
          builder: (_) =>  CreateAccountNutritionist(),
        );
      default:
        throw Exception("Route not found");
    }
  }

  static const String initalLoadingPage = '/register_doctor_page';
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
  static const String program_details = '/program_details';
  static const String navigation3_page = '/navigation3_page';
  static const String my_profile_page = '/my_profile_page';
  static const String settings_page = '/settings_page';
  static const String sign_in_or_register_page = '/sign_in_or_register_page';
  static const String register_doctor_page = '/';
  static const String veirfy_otp_page = '/veirfy_otp_page';
  static const String create_account_nutritionist = '/create_account_nutritionist';

  


  
}
