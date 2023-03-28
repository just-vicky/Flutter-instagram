import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_ui/components/home_screen/bottomNav.dart';
import 'package:instagram_ui/mockdata/MOCKDATA.dart';

import '../components/home_screen/homePageWidgets.dart';
import '../components/home_screen/homeScreenAppBar.dart';
import '../components/home_screen/circularWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: HomeScreenAppBar(),
      ),
      body: Column(
        children: [
          CircularWidget(),
          FeedbodyList(),
        ],
      ),
      bottomNavigationBar: HomePageBotomNav(
        url: url,
      ),
    );
  }
}
