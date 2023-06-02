import 'package:flutter/cupertino.dart';

import 'package:personal_website/commonWidgets/BlogPageWidgets/tagWidget.dart';
import 'package:personal_website/commonWidgets/BlogPageWidgets/titleWidget.dart';

import 'contentWidget.dart';
import 'dateWidget.dart';

/// This Widget is used for the container3 blog articles.
class Container3Widget extends StatelessWidget {
  final String imageLink;
  final String date;
  final String title;
  final String desc;
  final String tag;
  const Container3Widget({
    Key? key,
    required this.imageLink,
    required this.date,
    required this.title,
    required this.desc,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 2,
            child: Image(
              image: NetworkImage(imageLink),
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: double.maxFinite,
            )),
        DateWidget(Date: date),
        Flexible(flex: 1, child: TitleWidget(Title: title)),
        // const SizedBox(height: 15),
        Flexible(flex: 1, child: ContentWidget(Desc: desc)),
        TagWidget(Tag: tag),
      ],
    );
    ;
  }
}
