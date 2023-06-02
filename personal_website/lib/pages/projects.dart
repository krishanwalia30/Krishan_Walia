import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/navbar.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'PROJECTS'),
          ],
        ),
      ),
    );
  }
}
