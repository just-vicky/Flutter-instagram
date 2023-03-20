import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Icon(Icons.settings),
    );
  }
}
