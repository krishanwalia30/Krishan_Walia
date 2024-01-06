import 'package:flutter/material.dart';

import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/utils/BlogPageConstants/allData.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../commonWidgets/containerContentWidget.dart';

class Container4 extends StatelessWidget {
  // final double permissibleWidth;
  final double permissibleHeight;
  final List contentIndex;
  const Container4({
    Key? key,
    // required this.permissibleWidth,
    required this.permissibleHeight,
    required this.contentIndex,
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
                launchUrlString(AllBlogs[contentIndex[0]].Url);
              },
              child: ContainerContentWidget(
                imageLink: AllBlogs[contentIndex[0]].ImageLink,
                title: AllBlogs[contentIndex[0]].Title,
                desc: AllBlogs[contentIndex[0]].Desc,
                date: AllBlogs[contentIndex[0]].Date,
                tag: AllBlogs[contentIndex[0]].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[contentIndex[1]].Url);
              },
              child: ContainerContentWidget(
                imageLink: AllBlogs[contentIndex[1]].ImageLink,
                title: AllBlogs[contentIndex[1]].Title,
                desc: AllBlogs[contentIndex[1]].Desc,
                date: AllBlogs[contentIndex[1]].Date,
                tag: AllBlogs[contentIndex[1]].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[contentIndex[2]].Url);
              },
              child: ContainerContentWidget(
                imageLink: AllBlogs[contentIndex[2]].ImageLink,
                title: AllBlogs[contentIndex[2]].Title,
                desc: AllBlogs[contentIndex[2]].Desc,
                date: AllBlogs[contentIndex[2]].Date,
                tag: AllBlogs[contentIndex[2]].Tags,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
