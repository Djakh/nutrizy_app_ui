import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/head_page_Provider.dart';
import 'package:provider/provider.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<HeadPageProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: _modelProvider.getCurrentAppBar()),
      body: SingleChildScrollView(child: _modelProvider.getCurrentPage()),
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
          _modelProvider.changeCurrnetNumber(index);
        },
      ),
    );
  }
}
