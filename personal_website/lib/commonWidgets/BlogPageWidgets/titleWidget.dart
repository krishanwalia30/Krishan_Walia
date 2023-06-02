import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String Title;
  const TitleWidget({
    Key? key,
    required this.Title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 0, bottom: 5),
      alignment: Alignment.centerLeft,
      child: Text(
        Title,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        maxLines: 2,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
