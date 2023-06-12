import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/containe2content.dart';
import 'package:personal_website/commonWidgets/footer.dart';
import 'package:personal_website/commonWidgets/navbar.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container3.dart';
import 'package:personal_website/utils/ProjectsPageConstants/ProjectsData.dart';

import '../commonWidgets/mobileLayout.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'PROJECTS'),
            const SizedBox(height: 20),
            (MediaQuery.of(context).size.width <= 700)
                ? const MobileProjectsLayout(
                    contentIndex: [0, 1, 2],
                  )
                : Container3(
                    projectsPage: true,
                    content: [
                      allProjects[0],
                      allProjects[1],
                      allProjects[2],
                    ],
                    permissibleHeight: 340,
                  ),
            // const SizedBox(height: 40),
            (MediaQuery.of(context).size.width <= 700)
                ? const MobileProjectsLayout(
                    contentIndex: [3, 4],
                  )
                : Container2content(
                    projectsPage: true,
                    content: [
                      allProjects[3],
                      allProjects[4],
                    ],
                    permissibleHeight: 340),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
