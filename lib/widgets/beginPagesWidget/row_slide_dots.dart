import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/begin_pages_provider_model.dart';
import 'package:nutrizy_app_ui/models/beginPagesModel.dart';
import 'package:nutrizy_app_ui/widgets/beginPagesWidget/slide_dots.dart';

class RowSlideDots extends StatelessWidget {
  const RowSlideDots({
    Key? key,
    required this.modelProvider,
  }) : super(key: key);

  final BeginPagesProviderModel modelProvider;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize:  MainAxisSize.min,
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        for (int i = 0; i < slideList.length; i++)
          if (i == modelProvider.getCurrent)
          const SlideDots(true)
          else
          const  SlideDots(false)
      ],
    );
  }
}
