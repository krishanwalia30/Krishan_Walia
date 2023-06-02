import 'package:flutter/material.dart';

import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/utils/BlogPageConstants/allData.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../commonWidgets/BlogPageWidgets/container3Widget.dart';

class Container3 extends StatelessWidget {
  final double permissibleWidth;
  final double permissibleHeight;
  const Container3({
    Key? key,
    required this.permissibleWidth,
    required this.permissibleHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: permissibleHeight,
      width: permissibleWidth,
      margin: marginBoth,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[4].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[4].ImageLink,
                title: AllBlogs[4].Title,
                desc: AllBlogs[4].Desc,
                date: AllBlogs[4].Date,
                tag: AllBlogs[4].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[5].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[5].ImageLink,
                title: AllBlogs[5].Title,
                desc: AllBlogs[5].Desc,
                date: AllBlogs[5].Date,
                tag: AllBlogs[5].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[6].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[6].ImageLink,
                title: AllBlogs[6].Title,
                desc: AllBlogs[6].Desc,
                date: AllBlogs[6].Date,
                tag: AllBlogs[6].Tags,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
