import 'package:flutter/material.dart';
import 'package:groweigh/welcome_screen.dart';

class IntroThree extends StatefulWidget {
  const IntroThree({super.key});
  static const String id = 'intro_3';

  @override
  State<IntroThree> createState() => _IntroThreeState();
}

class _IntroThreeState extends State<IntroThree> {
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
                    image: AssetImage('images/img_2.png'),
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
                        'Our Vision',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Our vision at ImageFeed is to become the ultimate destination for visual inspiration.We aspire to curate a vast collection of captivating images, foster a thriving community of visual enthusiasts, and provide innovative tools for exploration and creativity. We envision a platform where users can effortlessly immerse themselves in beauty, find endless inspiration, and connect through the power of visual storytelling.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, WelcomePage.id);
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
