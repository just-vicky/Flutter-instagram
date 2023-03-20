import 'package:flutter/material.dart';
import 'package:instagram_ui/components/login_page_cpmponents/topbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomTopBar(),
      ),
    );
  }
}
