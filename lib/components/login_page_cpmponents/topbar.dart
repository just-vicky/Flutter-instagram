import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.settings,
        color: Colors.grey[600],
      ),
      leadingWidth: 40,
      title: Text(
        'English (India)',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey[600], fontSize: 13),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    );
  }
}
