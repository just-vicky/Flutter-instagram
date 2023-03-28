// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_ui/mockdata/MOCKDATA.dart';

class HomePageBotomNav extends StatelessWidget {
  const HomePageBotomNav({super.key, required this.url});

  final List<String> url;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            label: "home"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.video_collection,
            size: 30,
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
            label: "",
            icon: Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(url[1]),
                radius: 15,
              ),
            )),
      ],
    );
  }
}
