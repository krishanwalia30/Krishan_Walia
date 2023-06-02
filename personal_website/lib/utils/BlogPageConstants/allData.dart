import 'package:flutter/material.dart';

///  This file contains all the data of the blogs and the articles
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

// List of all the blogs in one place
List<ContainerData> AllBlogs = [
  LeftContainer1Data,
  RightTopContainer1Data,
  RightBottomContainer1Data,
  Container2Data,
  BlogData1,
  BlogData2,
  BlogData3,
  BlogData4,
  BlogData5,
  BlogData6,
];

//  Data for Left Container1 in Blog Page
ContainerData LeftContainer1Data = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*HuURc96YM151XIMxLD8uGA.jpeg',
  Title: 'Create beautiful charts and graphs in Flutter',
  Desc:
      'If you want to add beautiful charts or graphs to your flutter project or want to represent your data in the form of beautiful charts and graphs, then you will be content by going through this article.',
  Url:
      'https://medium.com/illumination/create-beautiful-charts-and-graphs-in-flutter-4f7e3ed2b47?source=user_profile---------0----------------------------',
  Date: '25 May 2023',
  Tags: 'UI Design',
);

//  Data for the Right Top Container1 in Blog Page
ContainerData RightTopContainer1Data = ContainerData(
  ImageLink: 'https://miro.medium.com/v2/resize:fit:828/0*Cx8uYq_QuFTSzrmx',
  Title: 'Shimmer effect in Flutter',
  Desc:
      'Increase User Experience on your app by simply using this shimmer effect to make your app not only look more beautiful but also please your customers and won’t let them feel waiting.',
  Url:
      'https://medium.com/design-bootcamp/create-beautiful-shimmer-effect-in-flutter-apps-f76f5cfcb2a1?source=user_profile---------1----------------------------',
  Date: '17 May 2023',
  Tags: 'Flutter',
);

// Data for the Bottom Right Container1 in Blog Page
ContainerData RightBottomContainer1Data = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*zb6NRM2sPGhe33nD3TnRDQ.png',
  Title: 'Create Beautiful UI in Flutter using Glassmorphism',
  Desc:
      'If you also want to make beautiful and awesome User Interface apps in Flutter, hence increasing downloads on your app😉, then you are at the right place. In this article, I will introduce you to a package in',
  Url:
      'https://medium.com/@krishanw30/create-beautiful-ui-in-flutter-using-glassmorphism-35a381660d52?source=user_profile---------2----------------------------',
  Date: '29 Mar 2023',
  Tags: 'Flutter',
);

// Data for the Container2 in Blog Page
ContainerData Container2Data = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*VkqWyN_UVvNXxFQL8Ht4Ew.jpeg',
  Title: 'Create beautiful user-interface in flutter apps using ant-design',
  Desc:
      'Use beautiful widgets and components in your Flutter Apps that are being provided by very famous Ant-Design, and make your UI much cleaner and more beautiful.',
  Url:
      'https://medium.com/design-bootcamp/create-beautiful-ui-in-flutter-apps-using-ant-design-1a5ee9666045?source=user_profile---------3----------------------------',
  Date: '18 Mar 2023',
  Tags: 'Flutter',
);

// Data for all the Blog posts

ContainerData BlogData1 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*t1VBdv66n18ikFivVvBCcA.png',
  Title: 'Create your own Web Scraper in Flutter (INTRO)',
  Desc:
      'If you are someone who wants to scrape a website or a webpage using Flutter and want to direct the data to the app that you have made. Then you are at the right place, in this post I will be introducing you to a package made in Flutter,',
  Url:
      'https://medium.com/@krishanw30/create-your-own-web-scraper-in-flutter-intro-3360d6cbb3f5?source=user_profile---------4----------------------------',
  Date: '6 Mar 2023',
  Tags: 'Web Scraping',
);

ContainerData BlogData2 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*Bd_vKUnMZynXqZVf0F-ojw.png',
  Title: 'Create Beautiful UI in flutter using Neumorphism',
  Desc:
      'If you also want to make beautiful and awesome User Interface apps in Flutter, hence increasing downloads on your app😉, then you are at the right place. In this article, ',
  Url:
      'https://medium.com/@krishanw30/create-beautiful-ui-in-flutter-using-neumorphism-38acb1cfdcb1?source=user_profile---------5----------------------------',
  Date: '6 Mar 2023',
  Tags: 'Neumorphism',
);

ContainerData BlogData3 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/1*7EAJs64MTkPqJSl2mLgELA.png',
  Title: 'Create a Beautiful Bottom Navigation Bar in Flutter (Part — 2)',
  Desc:
      'Building a flutter application and want to give your application a beautiful bottom navigation bar, that could just make your users feel attracted and enjoyed, then you are at the right place, I will lead you through the whole process of making a curved navigation bar. So, let’s get started…',
  Url:
      'https://medium.com/@krishanw30/create-a-beautiful-bottom-navigation-bar-in-flutter-part-2-9f7af63cb0bf?source=user_profile---------8----------------------------',
  Date: '27 Jan 2023',
  Tags: 'Flutter',
);

ContainerData BlogData4 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:828/format:webp/0*0Cw0MVcxUrMC0iiU.png',
  Title: 'Create a Hand Signature App in Flutter',
  Desc:
      'If you want to incorporate hand signature functionality in your app, you can do so by using a very simple and effective package named,',
  Url:
      'https://medium.com/@krishanw30/create-a-hand-signature-app-in-flutter-67c7ed047bf0?source=user_profile---------6----------------------------',
  Date: '30 Jan 2023',
  Tags: 'Flutter',
);

ContainerData BlogData5 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:750/format:webp/1*tVI0H6mz1mgexuyX0IkpdQ.png',
  Title: 'Build your own Web Scraper with NodeJs',
  Desc:
      'We will be building our own web scraper in the most simple and intuitive way. Even if you are a complete beginner and don’t know anything about the topic, you too by the end of this post will be in a position to scrape out any content out of any simple website of your wish.',
  Url:
      'https://medium.com/@krishanw30/build-your-own-web-scraper-with-nodejs-f9eea4956c88?source=user_profile---------13----------------------------',
  Date: '29 Dec 2022',
  Tags: 'Web Scraper',
);

ContainerData BlogData6 = ContainerData(
  ImageLink:
      'https://miro.medium.com/v2/resize:fit:574/format:webp/1*RkrdOBcbWqEFAGKd_48HVA.png',
  Title: 'Create a Beautiful Bottom Navigation Bar in Flutter',
  Desc:
      'If you are in building a flutter application and want to give your application a beautiful bottom navigation bar, that could just make your users feel attracted and enjoyed, then you are at the right place, I will lead you through the whole process of making a rolling bottom navigation bar. So, let’s get started…',
  Url:
      'https://medium.com/@krishanw30/create-a-beautiful-bottom-navigation-bar-in-flutter-37a760df39de?source=user_profile---------9----------------------------',
  Date: '25 Jan 2023',
  Tags: 'Bottom Navigation',
);
