import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/page_view_begin_pages.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/row_button_begin_pages.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/nutrizy_app_bar.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/row_slide_dots.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class BeginPage0 extends StatefulWidget {
  const BeginPage0({Key? key}) : super(key: key);

  @override
  _BeginPage0State createState() => _BeginPage0State();
}

class _BeginPage0State extends State<BeginPage0> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<BeginPagesProviderModel>(context);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.h * 42.5),
          child:  AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const NutrizyAppBarText(),
          ),
        ),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:  BoxConstraints(minHeight: constraint.maxHeight),
              child:  IntrinsicHeight(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize:  MainAxisSize.min,
                    children: [
                      PageViewBeginPages(
                          modelProvider: _modelProvider,
                          pageController: _pageController),
                      Container(
                        margin:  EdgeInsets.only(bottom: SizeConfig.h * 42.5),
                        child:  RowSlideDots(modelProvider: _modelProvider),
                      ),
                      RowButtonsBeginPages(pageController: _pageController),
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
