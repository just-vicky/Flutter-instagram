import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../route/route.dart' as route;

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black45),
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, route.signUpPage1),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color.fromRGBO(56, 97, 178, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ],
    );
  }
}
