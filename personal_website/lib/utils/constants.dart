import 'package:flutter/material.dart';

EdgeInsets marginHorizontal = EdgeInsets.symmetric(horizontal: 64);
EdgeInsets marginBoth = EdgeInsets.symmetric(horizontal: 64, vertical: 30);


// Class of the objects of the content 
class ContainerData {
  String ImageLink;
  String Title;
  String Desc;
  String Url;
  String Date;
  String Tags;

  ContainerData({
    required this.ImageLink,
    required this.Title,
    required this.Desc,
    required this.Url,
    required this.Date,
    required this.Tags,
  });
}
