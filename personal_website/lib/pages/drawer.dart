import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../project/app_route_constants.dart';
import '../themes/theme_manager.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text(
                'Blog',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(MyAppRoutesConstants.blogRouteName);
              },
            ),
            const SizedBox(height: 14),
            TextButton(
              child: const Text(
                'Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(MyAppRoutesConstants.projectsRouteName);
              },
            ),
            const SizedBox(height: 14),
            TextButton(
              child: const Text(
                'About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(MyAppRoutesConstants.aboutRouteName);
              },
            ),
            const SizedBox(height: 14),
            TextButton(
              child: const Text(
                'Newsletter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(MyAppRoutesConstants.newsletterRouteName);
              },
            ),
            const SizedBox(height: 14),
            Consumer<ThemeManager>(
              builder: (context, value, child) {
                return Switch(
                    value: (value.themeMode == ThemeMode.dark) ? true : false,
                    onChanged: (val) {
                      value.toggleTheme(val);
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
