import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/footer.dart';
import 'package:personal_website/commonWidgets/navbar.dart';
import 'package:personal_website/utils/AboutPageConstants.dart/aboutPageData.dart';
import 'package:personal_website/utils/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'Krishan Walia'),
            const SizedBox(height: 30),

            // Main Profile Picture
            Padding(
              padding: marginBoth,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  profilePicture(
                    context,
                    'https://avatars.githubusercontent.com/u/101003187?v=4',
                  ),
                  const SizedBox(height: 15),
                  AboutContentContainer('About Me', AboutMe),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // About Me container
            Padding(
                padding: marginHorizontal,
                child:
                    // (MediaQuery.of(context).size.width >= 1150)
                    //     ?
                    Flex(
                  mainAxisAlignment: MainAxisAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Flex(
                        direction: Axis.vertical,
                        children: [
                          AboutContentContainer('Skills', Skills),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 30),

            // const SizedBox(height: 30),
            techKnowledgeContent(context),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget profilePicture(BuildContext context, String imageLink) {
    return CircleAvatar(
      foregroundImage: NetworkImage(imageLink, scale: 0.5),
      // radius: MediaQuery.of(context).size.width / 10,
      minRadius: 50,
      maxRadius: 150,
    );
  }

  Widget AboutContentContainer(String title, aboutMe) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(
          aboutMe,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget techKnowledgeContent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: (MediaQuery.of(context).size.width <= 850) ? 620 : 325,
      child: Flex(
        direction: (MediaQuery.of(context).size.width <= 850)
            ? Axis.vertical
            : Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: Flex(
              direction: Axis.vertical,
              children: [
                // Programming ad Markup Languages Block- Title
                Padding(
                  padding: marginHorizontal,
                  child: Container(
                    width: double.maxFinite,
                    child: const Flex(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Programming & Markup Languages Known',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Programming ad Markup Languages Block- Images
                Padding(
                  padding: marginHorizontal,
                  child: const SizedBox(
                    width: double.maxFinite,
                    height: 64,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/6132/6132221.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/6132/6132222.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/3665/3665923.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/5968/5968267.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/5968/5968350.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/226/226777.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/1199/1199124.png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=7AFcZ2zirX6Y&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=21278&format=png')),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Frameworks and Libraries Used Block- Title
                Padding(
                  padding: marginHorizontal,
                  child: Container(
                    width: double.maxFinite,
                    child: const Flex(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Frameworks and Libraries Used',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Frameworks and Libraries Used Block- Images
                Padding(
                  padding: marginHorizontal,
                  child: const SizedBox(
                    width: double.maxFinite,
                    height: 64,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=pCvIfmctRaY8&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=84710&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=qV-JzWYl9dzP&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=24895&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=hsPbhkOH4FMe&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=13664&format=png')),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Flex(
              direction: Axis.vertical,
              children: [
                // Database and Cloud Hosting Tried Block
                Padding(
                  padding: marginHorizontal,
                  child: Container(
                    width: double.maxFinite,
                    child: const Flex(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Database and Cloud Hosting Tried',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Database and Cloud Hosting Tried Block
                Padding(
                  padding: marginHorizontal,
                  child: const SizedBox(
                    width: double.maxFinite,
                    height: 64,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=31085&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=62452&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=WHRLQdbEXQ16&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=74402&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=UFXRpPFebwa2&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=sBo1RJ3rjbje&format=png')),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Softwares and Tools Used Block
                Padding(
                  padding: marginHorizontal,
                  child: Container(
                    width: double.maxFinite,
                    child: const Flex(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Softwares & tools Used',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Softwares and Tools Used Block
                Padding(
                  padding: marginHorizontal,
                  child: const SizedBox(
                    width: double.maxFinite,
                    height: 64,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=W0YEwBDDfTeu&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=20906&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=AZOZNnY73haj&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=EgOU93v1DHjU&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=lOqoeP2Zy02f&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=J0SgMWzAxqFj&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=6RHskkZGRABM&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=9OGIyU8hrxW5&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=QEQQKirln6Tf&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=P2AnGyiJxMpp&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=2x&id=TnKST8QVzjcf&format=png')),
                          SizedBox(width: 10),
                          Image(
                              image: NetworkImage(
                                  'https://img.icons8.com/?size=3x&id=IPzemd2v4Ubj&format=png')),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
