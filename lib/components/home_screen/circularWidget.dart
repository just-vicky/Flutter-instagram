import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CircularWidget extends StatelessWidget {
  CircularWidget({super.key});

  List<String> url = [
    'https://picsum.photos/200',
    'https://images.unsplash.com/photo-1617854818583-09e7f077a156?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXJsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: StoriesWidget(url: url),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
    required this.url,
  });

  final List<String> url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: InkWell(
        child: CircleAvatar(backgroundImage: NetworkImage(url[1])),
      ),
    );
  }
}
