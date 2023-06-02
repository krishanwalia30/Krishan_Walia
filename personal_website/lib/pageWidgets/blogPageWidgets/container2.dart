import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/contentWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/dateWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/tagWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/titleWidget.dart';

import 'package:personal_website/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../utils/BlogPageConstants/allData.dart';

class Container2 extends StatelessWidget {
  final double permissibleWidth;
  final double permissibleHeight;
  const Container2({
    Key? key,
    required this.permissibleWidth,
    required this.permissibleHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: permissibleHeight,
      margin: marginBoth,
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {
          launchUrlString(AllBlogs[3].Url);
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(AllBlogs[3].ImageLink),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateWidget(Date: AllBlogs[3].Date),
                    const SizedBox(height: 5),
                    TitleWidget(Title: AllBlogs[3].Title),
                    const SizedBox(height: 10),
                    ContentWidget(Desc: AllBlogs[3].Desc),
                    const SizedBox(height: 5),
                    TagWidget(Tag: AllBlogs[3].Tags),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
