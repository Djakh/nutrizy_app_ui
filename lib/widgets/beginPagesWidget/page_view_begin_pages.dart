import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/models/beginPagesModel.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/begin_wrap_pages.dart';

import '../../size_config.dart';

class PageViewBeginPages extends StatelessWidget {
  const PageViewBeginPages({
    Key? key,
    required this.modelProvider,
    required PageController pageController,
  }) : _pageController = pageController, super(key: key);

  final BeginPagesProviderModel modelProvider;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:  Container(
        height: SizeConfig.h * 250,
        width: SizeConfig.w * 225,
        child: PageView.builder(
          onPageChanged: (int index) {
            modelProvider.changeCurrentStatus(index);
          },
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          itemCount: slideList.length,
          itemBuilder: (BuildContext context, int index) =>
              BeginWrapPages(index: index),
        ),
      ),
    );
  }
}

