// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Subscriber {
  String? emailid;

  // Constructor of the subscriber
  Subscriber({
    this.emailid,
  });

  // Json Serialization for the Subscriber
  Map<String, dynamic> toMap() {
    return {
      'emailid': emailid,
    };
  }

  factory Subscriber.fromMap(Map<String, dynamic> map) {
    return Subscriber(
      emailid: map['emailid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Subscriber.fromJson(String source) =>
      Subscriber.fromMap(json.decode(source) as Map<String, dynamic>);
}
