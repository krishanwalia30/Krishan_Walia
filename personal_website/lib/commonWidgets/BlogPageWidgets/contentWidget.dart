import 'package:flutter/cupertino.dart';

class ContentWidget extends StatelessWidget {
  final String Desc;
  const ContentWidget({
    Key? key,
    required this.Desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        Desc,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
