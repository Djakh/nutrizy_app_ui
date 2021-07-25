import 'package:flutter/material.dart';



class ToMyProfileAvatar extends StatelessWidget {
  const ToMyProfileAvatar({
    Key? key,required this.image,required this.navigateTo,
  }) : super(key: key);

  final String image;
  final navigateTo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(navigateTo);
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
