import 'dart:convert';

import 'package:personal_website/models/subscriber.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String _baseUrl = "https://backendforpersonalwebsite.onrender.com";

  static Future<void> addSubscriber(Subscriber subscriber) async {
    Uri requestUri = Uri.parse(_baseUrl + '/add');
    var response = await http.post(requestUri, body: subscriber.toMap());
    var decoded = jsonDecode(response.body);
    print(decoded.toString());
  }
}
