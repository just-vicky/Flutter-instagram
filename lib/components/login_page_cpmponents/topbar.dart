// ignore_for_file: prefer_final_fields, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTopBar extends StatefulWidget {
  const CustomTopBar({super.key});

  @override
  State<CustomTopBar> createState() => _CustomTopBarState();
}

class _CustomTopBarState extends State<CustomTopBar> {
  List<String> _language = ['A', 'B', 'C', 'D'];
  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text('English(India)'),
          value: _selectedLanguage,
          items: _language.map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedLanguage = value!;
            });
          },
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
