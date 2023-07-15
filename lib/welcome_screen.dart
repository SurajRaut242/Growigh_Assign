import 'package:flutter/material.dart';
import 'package:groweigh/feed_screen.dart';
import 'package:groweigh/upload_screen.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  static const String id = 'welcome_screen';
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage('images/img_3.png'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      color: Colors.white),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome Suraj',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, FeedPage.id);
                          },
                          child: Image.asset('images/img_4.png')),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, UploadImage.id);
                        },
                        child: Image.asset('images/img_5.png'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
