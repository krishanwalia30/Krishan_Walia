// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:personal_website/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../commonWidgets/containerContentWidget.dart';

class Container2content extends StatelessWidget {
  final bool projectsPage;
  final List<ContainerData> content;
  // final double permissibleWidth;
  final double permissibleHeight;
  const Container2content({
    Key? key,
    required this.projectsPage,
    required this.content,
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
                launchUrlString(content[0].Url);
              },
              child: (projectsPage)
                  ? ContainerContentWidgetProject(
                      imageLink: content[0].ImageLink,
                      title: content[0].Title,
                      desc: content[0].Desc,
                      date: content[0].Date,
                      tag: content[0].Tags,
                    )
                  : ContainerContentWidget(
                      imageLink: content[0].ImageLink,
                      title: content[0].Title,
                      desc: content[0].Desc,
                      date: content[0].Date,
                      tag: content[0].Tags,
                    ),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            flex: 1,
            child: InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                launchUrlString(content[1].Url);
              },
              child: (projectsPage)
                  ? ContainerContentWidgetProject(
                      imageLink: content[1].ImageLink,
                      title: content[1].Title,
                      desc: content[1].Desc,
                      date: content[1].Date,
                      tag: content[1].Tags,
                    )
                  : ContainerContentWidget(
                      imageLink: content[1].ImageLink,
                      title: content[1].Title,
                      desc: content[1].Desc,
                      date: content[1].Date,
                      tag: content[1].Tags,
                    ),
            ),
          ),
          // const SizedBox(width: 15),
          // Flexible(
          //   flex: 1,
          //   child: InkWell(
          //     hoverColor: Colors.transparent,
          //     onTap: () {
          //       launchUrlString(content[2].Url);
          //     },
          //     child: (projectsPage)
          //         ? ContainerContentWidgetProject(
          //             imageLink: content[1].ImageLink,
          //             title: content[1].Title,
          //             desc: content[1].Desc,
          //             date: content[1].Date,
          //             tag: content[1].Tags,
          //           )
          //         : ContainerContentWidget(
          //             imageLink: content[2].ImageLink,
          //             title: content[2].Title,
          //             desc: content[2].Desc,
          //             date: content[2].Date,
          //             tag: content[2].Tags,
          //           ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
