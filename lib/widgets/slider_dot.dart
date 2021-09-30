import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  final bool isActive;
  SliderDot({this.isActive});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: isActive ? 12 : 5,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
