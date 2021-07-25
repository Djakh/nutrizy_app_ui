// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nutrizy_app_ui/ProviderModels/chat_page_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/choose_plan_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/create_account_nutrionist_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/detail_pages_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/head_page_Provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/head_page_provider_n.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation0_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation0_provider_n.dart';
import 'package:nutrizy_app_ui/ProviderModels/navigation1_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/request_appointment_provider.dart';
import 'package:nutrizy_app_ui/ProviderModels/settiings_provider.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'ProviderModels/add_products_provider_n.dart';
import 'ProviderModels/begin_pages_provider_model.dart';
import 'ProviderModels/navigation1_provider_n.dart';
import 'ProviderModels/sign_up_provider.dart';
import 'size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BeginPagesProviderModel>(
          create: (_) => BeginPagesProviderModel(),
        ),
        ChangeNotifierProvider<SignUpProviderModel>(
          create: (_) => SignUpProviderModel(),
        ),
        ChangeNotifierProvider<DetailPagesProvider>(
          create: (_) => DetailPagesProvider(),
        ),
        ChangeNotifierProvider<ChoosePlanProvider>(
          create: (_) => ChoosePlanProvider(),
        ),
        ChangeNotifierProvider<HeadPageProvider>(
          create: (_) => HeadPageProvider(),
        ),
        ChangeNotifierProvider<Navigation0Provider>(
          create: (_) => Navigation0Provider(),
        ),
        ChangeNotifierProvider<RequestAppointmentProvider>(
          create: (_) => RequestAppointmentProvider(),
        ),
        ChangeNotifierProvider<Navigation1Provider>(
          create: (_) => Navigation1Provider(),
        ),
        ChangeNotifierProvider<ChatPageProvider>(
          create: (_) => ChatPageProvider(),
        ),
        ChangeNotifierProvider<SettingsProvider>(
          create: (_) => SettingsProvider(),
        ),
        ChangeNotifierProvider<CreateAccountNutrionistProvider>(
          create: (_) => CreateAccountNutrionistProvider(),
        ),
        ChangeNotifierProvider<HeadPageProviderN>(
          create: (_) => HeadPageProviderN(),
        ),
        ChangeNotifierProvider<Navigation0ProviderN>(
          create: (_) => Navigation0ProviderN(),
        ),
        ChangeNotifierProvider<Navigation1ProviderN>(
          create: (_) => Navigation1ProviderN(),
        ),
        ChangeNotifierProvider<AddProductsProvider>(
          create: (_) => AddProductsProvider(),
        ),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                initialRoute: RouteGenerator.initalLoadingPage,
                onGenerateRoute: RouteGenerator.generateRoute,
              );
            },
          );
        },
      ),
    );
  }
}
