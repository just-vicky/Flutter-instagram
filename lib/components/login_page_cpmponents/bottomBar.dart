import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Don't have an account?"),
          TextButton(
              onPressed: null,
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: Color.fromRGBO(56, 97, 178, 1),
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
