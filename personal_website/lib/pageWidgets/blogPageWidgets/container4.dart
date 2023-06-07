import 'package:flutter/material.dart';

import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/utils/BlogPageConstants/allData.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../commonWidgets/BlogPageWidgets/container3Widget.dart';

class Container4 extends StatelessWidget {
  // final double permissibleWidth;
  final double permissibleHeight;
  const Container4({
    Key? key,
    // required this.permissibleWidth,
    required this.permissibleHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: permissibleHeight,
      width: MediaQuery.of(context).size.width,
      margin: marginBoth,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[7].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[7].ImageLink,
                title: AllBlogs[7].Title,
                desc: AllBlogs[7].Desc,
                date: AllBlogs[7].Date,
                tag: AllBlogs[7].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[8].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[8].ImageLink,
                title: AllBlogs[8].Title,
                desc: AllBlogs[8].Desc,
                date: AllBlogs[8].Date,
                tag: AllBlogs[8].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[9].Url);
              },
              child: Container3Widget(
                imageLink: AllBlogs[9].ImageLink,
                title: AllBlogs[9].Title,
                desc: AllBlogs[9].Desc,
                date: AllBlogs[9].Date,
                tag: AllBlogs[9].Tags,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
