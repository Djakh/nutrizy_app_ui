import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/detail_pages_provider.dart';
import 'package:nutrizy_app_ui/widgets/animations/detail_progress_bar.dart';

import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<DetailPagesProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                SizedBox(height: 50),
                DetailProgressBar(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 550,
                  child: _modelProvider.getPage(),
                ),
                SizedBox(
                  height: 10,
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
