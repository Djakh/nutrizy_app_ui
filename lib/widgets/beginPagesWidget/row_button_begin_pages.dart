import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:provider/provider.dart';

import '../../route.generator.dart';

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
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
               Navigator.pushNamed(context, RouteGenerator.choosingPosition);
              },
              child: Text(
                "skip",
                style:  TextStyle(color: Colors.grey[700], fontSize: 20),
              )),
          FlatButton(
            height: 40,
            minWidth: 90,
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
            child: const Text(
              "next",
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          )
        ],
      ),
    );
  }
}
