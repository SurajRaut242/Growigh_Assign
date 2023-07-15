import 'package:flutter/material.dart';
import 'package:groweigh/intro_2.dart';
import 'welcome_screen.dart';

class IntroOne extends StatefulWidget {
  const IntroOne({super.key});
  static const String id = 'intro_1';
  @override
  State<IntroOne> createState() => _IntroOneState();
}

class _IntroOneState extends State<IntroOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, WelcomePage.id);
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Color(0xFF266894)),
                    child: Text('Skip'),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage('images/img.png'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      color: Color(0xFF266894)),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Discover a world of captivating images with ImageFeed.'
                        ' Immerse yourself in stunning visuals, '
                        'personalized recommendations, community engagement, '
                        'and easy image saving. Open your eyes to beauty.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, IntroTwo.id);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
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
