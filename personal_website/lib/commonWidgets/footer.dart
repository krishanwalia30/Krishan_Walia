import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.7,
            color: Theme.of(context).textTheme.titleMedium!.color!,
          ),
        ),
      ),
      margin: marginHorizontal,
      child: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.fitHeight,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.copyright_rounded),
            const SizedBox(width: 15),
            const Text(
              '2023',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                launchUrlString('https://www.linkedin.com/in/krishan-walia/');
              },
              child: const Text(
                'LinkedIn',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                launchUrlString('https://twitter.com/_Krishan_Walia_');
              },
              child: const Text(
                'Twitter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                launchUrlString('https://medium.com/@krishanw30');
              },
              child: const Text(
                'Medium',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                launchUrlString('https://github.com/krishanwalia30');
              },
              child: const Text(
                'Github',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
