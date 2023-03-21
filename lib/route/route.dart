import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/forgot_password_screen.dart';
import 'package:instagram_ui/screens/login_screen.dart';

const String loginPage = "login";
const String forgotYourPassword = "forgot";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
    case forgotYourPassword:
      return MaterialPageRoute(
        builder: (context) => ForgotPasswordScreen(),
      );
    default:
      throw ("This route does not exist");
  }
}
