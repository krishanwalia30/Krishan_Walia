import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/contentWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/dateWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/tagWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/titleWidget.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../utils/constants.dart';
import '../../utils/BlogPageConstants/allData.dart';

class LayoutContainer1 extends StatelessWidget {
  // final double permissibleWidth;
  final double permissibleHeight;
  const LayoutContainer1({
    Key? key,
    // required this.permissibleWidth,
    required this.permissibleHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      margin: marginHorizontal,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(AllBlogs[0].Url);
              },
              child: LeftContainer1(
                AllBlogs[0].ImageLink,
                AllBlogs[0].Title,
                AllBlogs[0].Desc,
                AllBlogs[0].Date,
                AllBlogs[0].Tags,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      launchUrlString(AllBlogs[1].Url);
                    },
                    child: RightContainer1(
                      AllBlogs[1].ImageLink,
                      AllBlogs[1].Title,
                      AllBlogs[1].Desc,
                      AllBlogs[1].Date,
                      AllBlogs[1].Tags,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Flexible(
                  flex: 1,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      launchUrlString(AllBlogs[2].Url);
                    },
                    child: RightContainer1(
                        AllBlogs[2].ImageLink,
                        AllBlogs[2].Title,
                        AllBlogs[2].Desc,
                        AllBlogs[2].Date,
                        AllBlogs[2].Tags),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget LeftContainer1(String imageLink, title, desc, date, tag) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 2,
          child: Image(
            width: double.maxFinite,
            fit: BoxFit.cover,
            image: NetworkImage(imageLink),
          ),
        ),
        DateWidget(Date: date),
        const SizedBox(height: 5),
        TitleWidget(Title: title),
        const SizedBox(height: 10),
        ContentWidget(Desc: desc),
        const SizedBox(height: 5),
        TagWidget(Tag: tag),
      ],
    );
  }

  Widget RightContainer1(String imageLink, title, desc, date, tag) {
    return SizedBox(
      height: permissibleHeight,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Image(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                  image: NetworkImage(imageLink))),
          const SizedBox(width: 15),
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DateWidget(Date: date),
                const SizedBox(height: 5),
                TitleWidget(Title: title),
                const SizedBox(height: 10),
                ContentWidget(Desc: desc),
                const SizedBox(height: 5),
                TagWidget(Tag: tag)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
