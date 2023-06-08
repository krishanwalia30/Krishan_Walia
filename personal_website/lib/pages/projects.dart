import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/containe2content.dart';
import 'package:personal_website/commonWidgets/footer.dart';
import 'package:personal_website/commonWidgets/navbar.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container3.dart';
import 'package:personal_website/utils/ProjectsPageConstants/ProjectsData.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'PROJECTS'),
            Container3(
              projectsPage: true,
              content: [
                allProjects[0],
                allProjects[1],
                allProjects[2],
              ],
              permissibleHeight: 420,
            ),
            // const SizedBox(height: 40),
            Container2content(
                projectsPage: true,
                content: [
                  allProjects[3],
                  allProjects[4],
                ],
                permissibleHeight: 400),
            Footer(),
          ],
        ),
      ),
    );
  }
}
