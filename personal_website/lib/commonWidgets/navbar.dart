// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_website/project/app_route_constants.dart';
import 'package:personal_website/themes/theme_manager.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  final String pageName;
  const NavBar({
    Key? key,
    required this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeManager _themeManagerProvider = Provider.of<ThemeManager>(context);

    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.symmetric(horizontal: 112, vertical: 48),
          margin: marginBoth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Your Name',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
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
                  const SizedBox(width: 14),
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
                  const SizedBox(width: 14),
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
                  const SizedBox(width: 14),
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
                  const SizedBox(width: 14),
                  Consumer<ThemeManager>(
                    builder: (context, value, child) {
                      return Switch(
                          value: (value.themeMode == ThemeMode.dark)
                              ? true
                              : false,
                          onChanged: (val) {
                            value.toggleTheme(val);
                          });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Container(
            margin: marginHorizontal,
            width: MediaQuery.of(context).size.width,
            // height: 295,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 0.7,
                    color: Theme.of(context).textTheme.titleMedium!.color!),
                top: BorderSide(
                    width: 0.7,
                    color: Theme.of(context).textTheme.titleMedium!.color!),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                pageName,
                style: TextStyle(
                  // fontSize: 180,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
