// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:personal_website/utils/BlogPageConstants/allData.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../utils/ProjectsPageConstants/ProjectsData.dart';
import '../utils/constants.dart';
import 'BlogPageWidgets/contentWidget.dart';
import 'BlogPageWidgets/dateWidget.dart';
import 'BlogPageWidgets/tagWidget.dart';
import 'BlogPageWidgets/titleWidget.dart';

class MobileBlogLayout extends StatelessWidget {
  final List<int> contentIndex;
  const MobileBlogLayout({
    Key? key,
    required this.contentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (320 * (contentIndex.length)).toDouble(),
      width: double.maxFinite,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                  onTap: () =>
                      launchUrlString(AllBlogs[contentIndex[index]].Url),
                  hoverColor: Colors.transparent,
                  child: MobileContainer(AllBlogs[contentIndex[index]])),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
        itemCount: contentIndex.length,
      ),
    );
  }
}

class MobileProjectsLayout extends StatelessWidget {
  final List<int> contentIndex;
  const MobileProjectsLayout({
    Key? key,
    required this.contentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (320 * (contentIndex.length)).toDouble(),
      width: double.maxFinite,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                  onTap: () =>
                      launchUrlString(allProjects[contentIndex[index]].Url),
                  hoverColor: Colors.transparent,
                  child: MobileContainer(allProjects[contentIndex[index]])),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
        itemCount: contentIndex.length,
      ),
    );
  }
}

Widget MobileContainer(ContainerData element) {
  return Container(
    margin: marginHorizontal,
    width: double.maxFinite,
    height: 300,
    child: Flex(
      direction: Axis.vertical,
      children: [
        Flexible(
            flex: 1,
            child: Image(
              image: NetworkImage(element.ImageLink),
              fit: BoxFit.cover,
              width: double.maxFinite,
            )),
        DateWidget(Date: element.Date),
        const SizedBox(height: 5),
        TitleWidget(Title: element.Title),
        const SizedBox(height: 10),
        ContentWidget(Desc: element.Desc),
        const SizedBox(height: 5),
        TagWidget(Tag: element.Tags),
      ],
    ),
  );
}
