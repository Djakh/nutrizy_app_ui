import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/route.generator.dart';

class InitialLoadingPage extends StatefulWidget {
  const InitialLoadingPage({Key? key}) : super(key: key);

  @override
  _InitialLoadingPageState createState() => _InitialLoadingPageState();
}

class _InitialLoadingPageState extends State<InitialLoadingPage> {
  void pushToBeginPage0() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteGenerator.beginPage0);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    pushToBeginPage0();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
          width: 150,
          height: 150,
          decoration:  BoxDecoration(
              borderRadius:  BorderRadius.circular(5),
              image:const DecorationImage(
                image: AssetImage("assets/initial_asset.png"),
              )),
        )));
  }
}
