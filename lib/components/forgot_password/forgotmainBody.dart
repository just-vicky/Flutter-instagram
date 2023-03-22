// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../route/route.dart' as route;

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 70),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Column(children: [
              Text(
                'Find your account',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
                child: Text(
                  "Enter your username or the email or phone number linked to your account",
                  style: TextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 16,
                      color: Colors.black45),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(),
                  label: Text('Username, email or phone')),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Opacity(
              opacity: 0.5,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, route.loginPage),
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue[400],
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Can\'t reset your password',
              style: TextStyle(
                  color: Colors.blue[400], fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 5,
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
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.facebook_rounded,
                color: Colors.black,
              ),
              label: Text(
                'Log in with Facebook',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
