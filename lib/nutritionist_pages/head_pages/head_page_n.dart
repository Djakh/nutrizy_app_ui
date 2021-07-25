import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/head_page_provider_n.dart';
import 'package:nutrizy_app_ui/route.generator.dart';
import 'package:provider/provider.dart';

class HeadPageN extends StatelessWidget {
  const HeadPageN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<HeadPageProviderN>(context);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: _modelProvider.getCurrentAppBar()),
      body: _modelProvider.getCurrentPage(),
      
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _modelProvider.getCurrentNumber,
        iconSize: 30,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), title: Text(""))
        ],
        onTap: (index) {
          if(index < 3){_modelProvider.changeCurrnetNumber(index);}else{
            Navigator.of(context).pushNamed(RouteGenerator.navigation3_page_n);
          }
          
        },
      ),
    );
  }
}
