import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:untitled1/constant/post_json.dart';
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profile),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 19,
                                  height: 19,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: white),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: buttonFollowColor,
                                    size: 19,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          style: TextStyle(color: white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: List.generate(stories.length, (index) {
                    return StoryItem(
                      img: stories[index]['img'],
                      name: stories[index]['name'],
                    );
                  }),
                )
              ],
            ),
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(posts[0]['profileImg']),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                        Text(
                          posts[0]['name'],
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Icon(
                          LineAwesomeIcons.ellipsis_h,
                          color: white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(posts[0]['postImg']),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              "assets/images/loved_icon.svg",
                              width: 27,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/images/comment_icon.svg",
                              width: 27,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(
                              "assets/images/message_icon.svg",
                              width: 27,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/save_icon.svg",
                          width: 27,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RichText(text: TextSpan(children: [TextSpan(text: "Liked by")]))
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
