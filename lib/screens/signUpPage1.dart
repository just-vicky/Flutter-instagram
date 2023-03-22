import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_ui/components/login_page_cpmponents/mainBody.dart';
import '../components/signup/signUpBodyContent.dart';

class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBodyContent1(),
    );
  }
}
