import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/navbar.dart';
import 'package:personal_website/models/subscriber.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container3.dart';
import 'package:personal_website/pageWidgets/blogPageWidgets/container4.dart';
import 'package:personal_website/services/api_service.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:validated/validated.dart' as validate;

import '../commonWidgets/footer.dart';
import '../utils/BlogPageConstants/allData.dart';

class NewsletterPage extends StatefulWidget {
  const NewsletterPage({super.key});

  @override
  State<NewsletterPage> createState() => _NewsletterPageState();
}

class _NewsletterPageState extends State<NewsletterPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();

    @override
    void dispose() {
      _emailController.dispose();
    }

    void addSub(String Emailid) {
      Subscriber newSubscriber = Subscriber(emailid: Emailid);
      ApiService.addSubscriber(newSubscriber);
    }

    // bool emailFieldActive = true;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBar(pageName: 'NEWSLETTER'),
            // SizedBox(height: 50),
            FittedBox(
              child: Container(
                margin: marginBoth,
                child: Column(
                  children: const [
                    Text(
                      'Stories and Interviews',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Subscribe to learn about new product features, the latest in technology,\n solutions, and updates.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: TextFormField(
                        // enabled: emailFieldActive,

                        validator: (value) {
                          // If empty value, the isEmail function throw a error.
                          // So I changed this function with try and catch.
                          if (validate.isEmail(value.toString())) {
                            return null;
                          } else {
                            return "Please enter a valid email";
                          }
                        },
                        style: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w400,
                        ),
                        controller: _emailController,
                        cursorColor: Colors.purple,

                        // Decoration of field
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(color: Colors.purple),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 220, 220, 220),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Flexible(
                      flex: 1,
                      child: InkWell(
                        hoverColor: Colors.purple.shade100,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a Snackbar.
                            // print('${_emailController.text}');

                            addSub(_emailController.text);
                            setState(() {});
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                "Thanks For Subscribing!!!",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green,
                                ),
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 206, 253, 210),
                              dismissDirection: DismissDirection.horizontal,
                              duration: Duration(milliseconds: 1000),
                            ));
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple,
                          ),
                          height: 47,
                          width: 125,
                          child: const FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Subscribe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container3(
              projectsPage: false,
              content: [
                AllBlogs[4],
                AllBlogs[5],
                AllBlogs[6],
              ],
              // permissibleWidth: MediaQuery.of(context).size.width,
              permissibleHeight: 340,
            ),
            const Container4(
              // permissibleWidth: MediaQuery.of(context).size.width,
              permissibleHeight: 340,
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
