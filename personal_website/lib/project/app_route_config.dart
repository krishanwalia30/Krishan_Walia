import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/project/app_route_constants.dart';

import '../pages/about.dart';
import '../pages/blog.dart';
import '../pages/newsletter.dart';
import '../pages/projects.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(routes: [
      GoRoute(
          name: MyAppRoutesConstants.aboutRouteName,
          path: '/about',
          pageBuilder: (context, state) {
            return MaterialPage(child: AboutPage());
          }),
      GoRoute(
          name: MyAppRoutesConstants.blogRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(child: BlogPage());
          }),
      GoRoute(
          name: MyAppRoutesConstants.projectsRouteName,
          path: '/projects',
          pageBuilder: (context, state) {
            return MaterialPage(child: ProjectsPage());
          }),
      GoRoute(
          name: MyAppRoutesConstants.newsletterRouteName,
          path: '/newsletter',
          pageBuilder: (context, state) {
            return MaterialPage(child: NewsletterPage());
          }),
    ]);
    return router;
  }
}

class PeojectsPage {}
