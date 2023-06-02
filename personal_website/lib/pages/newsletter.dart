import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/navbar.dart';

class NewsletterPage extends StatelessWidget {
  const NewsletterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'NEWSLETTER'),
          ],
        ),
      ),
    );
  }
}
