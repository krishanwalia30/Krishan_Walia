import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/navbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'Krishan Walia'),
          ],
        ),
      ),
    );
  }
}
