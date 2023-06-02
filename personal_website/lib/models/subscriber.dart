// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Subscriber {
  String? id;

  // Constructor of the subscriber
  Subscriber({
    this.id,
  });

  // Json Serialization for the Subscriber
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Subscriber.fromMap(Map<String, dynamic> map) {
    return Subscriber(
      id: map['id'] != null ? map['id'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Subscriber.fromJson(String source) =>
      Subscriber.fromMap(json.decode(source) as Map<String, dynamic>);
}
