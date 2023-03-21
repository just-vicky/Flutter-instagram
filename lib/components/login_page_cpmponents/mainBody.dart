// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Text(
                'Instagram',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Billabong', fontSize: 60),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number, email or username',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
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
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot your login details?',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Text(
                      'Get help logging in.',
                      style: TextStyle(
                          color: Color.fromRGBO(56, 97, 178, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
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
                  Text('OR'),
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
                  Icon(
                    Icons.facebook_rounded,
                    color: Color.fromRGBO(37, 119, 241, 1),
                  ),
                  Text(
                    'Log in with Facebook',
                    style: TextStyle(
                        color: Color.fromRGBO(37, 119, 241, 1),
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
