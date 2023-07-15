import 'package:flutter/material.dart';
import 'package:groweigh/feed_screen.dart';
import 'package:groweigh/intro_1.dart';
import 'package:groweigh/upload_screen.dart';
import 'package:groweigh/welcome_screen.dart';
import 'intro_2.dart';
import 'intro_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groweigh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: IntroOne.id,
      routes: {
        IntroOne.id: (context) => IntroOne(),
        IntroTwo.id: (context) => IntroTwo(),
        IntroThree.id: (context) => IntroThree(),
        WelcomePage.id: (context) => WelcomePage(),
        FeedPage.id: (context) => FeedPage(),
        UploadImage.id: (context) => UploadImage(),
      },
    );
  }
}
