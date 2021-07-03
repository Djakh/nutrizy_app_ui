

import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/ProviderModels/detail_pages_provider.dart';
import 'package:provider/provider.dart';

class DetailProgressBar extends StatefulWidget {
  const DetailProgressBar({Key? key}) : super(key: key);

  @override
  _DetailProgressBarState createState() => _DetailProgressBarState();
}

class _DetailProgressBarState extends State<DetailProgressBar>
    with SingleTickerProviderStateMixin {

  late TweenAnimationBuilder tween;
      
  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<DetailPagesProvider>(context);
    
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: _modelProvider.getProgressvalue),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, _) => ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50)),
                child: LinearProgressIndicator(
            minHeight: 12,
            
            backgroundColor: Colors.grey[300],
            valueColor: currentProgressColor(_modelProvider.getProgressvalue),
            value: value),
      ),
    );
  }

 
  AlwaysStoppedAnimation<Color> currentProgressColor(double progressValue) {
    if (progressValue == 0.25) {
      return AlwaysStoppedAnimation<Color>(Colors.indigo);
    } else if (progressValue == 0.50) {
      return AlwaysStoppedAnimation<Color>(Colors.green);
    } else if (progressValue == 0.75) {
      return AlwaysStoppedAnimation<Color>(Colors.red);
    } else if (progressValue == 1) {
      return AlwaysStoppedAnimation<Color>(Colors.orange);
    } else {
      return AlwaysStoppedAnimation<Color>(Colors.pink);
    }
  }
}
