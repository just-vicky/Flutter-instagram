// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../route/route.dart' as route;

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Image.network(
                    'https://logos-download.com/wp-content/uploads/2016/03/Instagram_Logo_2016.png'),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(),
                    labelText: 'Phone number, email or username',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off_outlined)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Opacity(
                  opacity: 0.6,
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white30),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blue[400],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot your login details?',
                      style: TextStyle(color: Colors.black45),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(
                          context, route.forgotYourPassword),
                      child: Text(
                        'Get help logging in.',
                        style: TextStyle(
                            color: Color.fromRGBO(56, 97, 178, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Divider(
                        color: Colors.grey[700],
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Divider(
                        color: Colors.grey[700],
                        height: 36,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.facebook_rounded,
                      color: Color.fromRGBO(37, 119, 241, 1),
                    ),
                    label: Text(
                      'Log in with Facebook',
                      style: TextStyle(
                          color: Color.fromRGBO(37, 119, 241, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
