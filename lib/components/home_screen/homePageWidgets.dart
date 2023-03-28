import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../mockdata/MOCKDATA.dart';

class FeedbodyList extends StatelessWidget {
  const FeedbodyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => FeedBody(
          url: url,
          index: index,
        ),
      ),
    );
  }
}

class FeedBody extends StatelessWidget {
  const FeedBody({
    super.key,
    required this.url,
    required this.index,
  });

  final List<String> url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedAppBar(
          url: url,
          index: index,
        ),
        FeedImage(
          url: url,
          index: index,
        ),
        const SizedBox(
          height: 2,
        ),
        const FeedActionBar(),
        FeedBottomBody(
          url: url,
          index: index,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class FeedBottomBody extends StatelessWidget {
  const FeedBottomBody({
    super.key,
    required this.url,
    required this.index,
  });

  final List<String> url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '2,890 likes',
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 28,
              child: TextButton(
                onPressed: null,
                child: const Text('View all 45 comments'),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, minimumSize: Size.zero),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: SizedBox(
                  width: 35,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      url[index],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const SizedBox(
                height: 30,
                width: 300,
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Add a comment...',
                      hintStyle: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '2 hours ago',
              style: TextStyle(fontSize: 11, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}

class FeedActionBar extends StatelessWidget {
  const FeedActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black87,
              ),
              iconSize: 32,
            ),
            SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.comment,
                color: Colors.black87,
              ),
              iconSize: 28,
            ),
            SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.paperPlane,
                color: Colors.black87,
              ),
              iconSize: 28,
            ),
          ],
        ),
        const IconButton(
          onPressed: null,
          icon: Icon(
            FontAwesomeIcons.bookmark,
            color: Colors.black87,
          ),
          iconSize: 28,
        ),
      ],
    );
  }
}

class FeedImage extends StatelessWidget {
  const FeedImage({
    super.key,
    required this.url,
    required this.index,
  });

  final List<String> url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 304.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              url[index],
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class FeedAppBar extends StatelessWidget {
  const FeedAppBar({
    super.key,
    required this.url,
    required this.index,
  });

  final List<String> url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                url[index],
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'beinghuman',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
        ],
      ),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.black87,
            ))
      ],
      toolbarHeight: 50,
      backgroundColor: Colors.white,
      elevation: 1,
    );
  }
}

class StoriesWidget extends StatelessWidget {
  const StoriesWidget(
      {super.key, required this.url, required this.index, required this.name});

  final List<String> url;
  final int index;
  final List<String> name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: GestureDetector(
            onTap: () => print('pressed $index'),
            child: CircleAvatar(
              radius: 37,
              backgroundImage: NetworkImage(
                url[index],
              ),
            ),
          ),
        ),
        Text(name[index])
      ],
    );
  }
}
