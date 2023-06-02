import 'package:flutter/material.dart';
import 'package:personal_website/commonWidgets/navbar.dart';
import 'package:personal_website/models/subscriber.dart';
import 'package:personal_website/services/api_service.dart';

class NewsletterPage extends StatelessWidget {
  const NewsletterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(pageName: 'NEWSLETTER'),
            ElevatedButton(
                onPressed: () {
                  Subscriber newSubscriber =
                      Subscriber(id: 'krishanw30@asdf.com');
                  // print('krishan');
                  ApiService.addSubscriber(newSubscriber);
                },
                child: Text('Press to add your mail to subscribers')),
          ],
        ),
      ),
    );
  }
}
