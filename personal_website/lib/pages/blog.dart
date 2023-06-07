import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/footer.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container2.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container3.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/commonWidgets/navbar.dart';

import '../pageWidgets/blogPageWidgets/container1.dart';
import '../pageWidgets/blogPageWidgets/container4.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double permissibleWidth = MediaQuery.of(context).size.width - 224;
    // double permissibleHeight = 432;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NavBar(pageName: 'THE BLOG'),
            Container(
              margin: marginBoth,
              child: const Text(
                'Recent Blogs',
                style: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const LayoutContainer1(
              permissibleHeight: 450,
              // permissibleWidth: MediaQuery.of(context).size.width - 224,
            ),
            Container2(
              permissibleHeight: 225,
              permissibleWidth: MediaQuery.of(context).size.width - 224,
            ),
            Container(
              margin: marginHorizontal,
              child: const Text(
                'All Blog Posts',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container3(
              permissibleHeight: 340,
              // permissibleWidth: MediaQuery.of(context).size.width - 224,
            ),
            Container4(
              permissibleHeight: 340,
              // permissibleWidth: MediaQuery.of(context).size.width - 224,
            ),
            const SizedBox(
              height: 40,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
