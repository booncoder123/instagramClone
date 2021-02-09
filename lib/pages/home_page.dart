import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constant/story_json.dart';
import 'package:untitled1/theme/colors.dart';

import 'StoryItem.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return Column(
      children: [

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(stories.length, (index) {
              return StoryItem(
                img: stories[index]['img'],
                name: stories[index]['name'],
              );
            }),
          ),
        )
      ],
    );
  }
}
