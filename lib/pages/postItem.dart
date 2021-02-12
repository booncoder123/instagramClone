
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:untitled1/constant/post_json.dart';
import 'package:untitled1/theme/colors.dart';

class postItem extends StatelessWidget {
  const postItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
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
                            image:
                            NetworkImage(posts[0]['profileImg']),
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
        RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Liked by ",
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
              TextSpan(
                text: "Boon",
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: " and other",
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              )
            ])),
        SizedBox(
          height: 1,
        ),
        RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Boon",
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: " Hello Good afternoon Paris",
                style:
                TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              )
            ])),
        SizedBox(
          height: 6,
        ),
        Text(
          "View 10 comments",
          style: TextStyle(
              color: white.withOpacity(0.3),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(posts[0]['profileImg']),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Add a comment...",
                    style: TextStyle(
                        color: white.withOpacity(0.3),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ]
            ),
            Row(
              children: [
                Text(
                  "😀",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "😍",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_circle,
                  color: white.withOpacity(0.5),
                  size: 18,
                )
              ],
            )


          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "1 day ago",
          style: TextStyle(
              color: white.withOpacity(0.3),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),


      ],
    );
  }
}