import 'intro_3.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class IntroTwo extends StatefulWidget {
  const IntroTwo({super.key});
  static const String id = 'intro_2';

  @override
  State<IntroTwo> createState() => _IntroTwoState();
}

class _IntroTwoState extends State<IntroTwo> {
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
                    image: AssetImage('images/img_1.png'),
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
                        'Our Mission',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'ImageFeed: Redefining visual inspiration.'
                        ' Discover, connect, and be inspired by captivating images. '
                        'Personalized recommendations, vibrant community, and intuitive features.'
                        ' Ignite creativity and evoke emotions through a purely visual experience. '
                        'Join us to open your eyes to a world of inspiration, one image at a time.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                        Navigator.pushNamed(context,IntroThree.id);
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
