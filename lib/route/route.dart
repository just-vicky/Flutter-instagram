import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/forgot_password_screen.dart';
import 'package:instagram_ui/screens/login_screen.dart';
import 'package:instagram_ui/screens/signUpPage1.dart';
import '../screens/signup_screen2.dart';

const String loginPage = "login";
const String forgotYourPassword = "forgot";
const String signUpPage1 = 'signup1';
const String signUpPage2 = 'signup2';

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
    case signUpPage1:
      return MaterialPageRoute(
        builder: (context) => SignUpScreen1(),
      );
    case signUpPage2:
      return MaterialPageRoute(
        builder: (context) => SignUpPage2(),
      );
    default:
      throw ("This route does not exist");
  }
}
