import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenAppBar extends StatefulWidget {
  const HomeScreenAppBar({super.key});

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  String? _value;
  List<String> _index = ['A', 'B'];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: DropdownButton(
              hint: Container(
                padding: const EdgeInsets.only(top: 8),
                height: 500,
                child: Image.network(
                    'https://logos-download.com/wp-content/uploads/2016/03/Instagram_Logo_2016.png'),
              ),
              value: _value,
              icon: const Icon(Icons.keyboard_arrow_down),
              onChanged: (String? item) {
                setState(() {
                  _value = item;
                });
              },
              items: _index.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: TextButton(
                    onPressed: null,
                    child: Text(e),
                  ),
                );
              }).toList(),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      FontAwesomeIcons.facebookMessenger,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 6,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[600],
                      ),
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
