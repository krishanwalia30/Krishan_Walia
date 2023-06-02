import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String Date;
  const DateWidget({
    Key? key,
    required this.Date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        Date,
        style: const TextStyle(
            color: Colors.purple, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
