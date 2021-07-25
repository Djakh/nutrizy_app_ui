import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:provider/provider.dart';

import '../../route.generator.dart';
import '../../size_config.dart';

class RowButtonsBeginPages extends StatelessWidget {
  const RowButtonsBeginPages({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<BeginPagesProviderModel>(context);
    return Padding(
      padding:  EdgeInsets.fromLTRB(SizeConfig.w * 6, SizeConfig.h * 8, SizeConfig.w * 6, SizeConfig.h * 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
               Navigator.pushNamed(context, RouteGenerator.choosingPosition);
              },
              child: Text(
                "skip",
                style:  TextStyle(color: Colors.grey[700], fontSize: SizeConfig.w * 10),
              )),
          FlatButton(
            height: SizeConfig.h * 20,
            minWidth: SizeConfig.w * 45,
            color:  Colors.indigo[400],
            onPressed: () {
              if (_modelProvider.getCurrent < 2) {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.linear);
              } else {
                Navigator.pushNamed(context, RouteGenerator.choosingPosition);
              }
            },
            child:  Text(
              "next",
              style:  TextStyle(fontSize: SizeConfig.w * 9, color: Colors.white),
            ),
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConfig.w * 9.0),
            ),
          )
        ],
      ),
    );
  }
}
