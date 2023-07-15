import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});
  static const String id = 'feed_screen';
  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<dynamic> images = [];
  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  Future<void> fetchImages() async {
    final response = await http.get(
      Uri.parse('https://api.unsplash.com/photos/random?count=20'),
      headers: {
        'Authorization':
            'Client-ID ZOeVUqd_FwEBhCHektD34fe7ceO3SpEs-OCYHtNAluc',
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        images = jsonDecode(response.body);
      });
    } else {
      print('Failed to fetch images');
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xFF276997),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '  Hello, Suraj',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Explore',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                      onChanged: (value) {
                        // Handle the text input change here
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   Browse By',
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text('   '),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Latest',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Color(0xFFD9D9D9),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Older',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor: Color(0xFFD9D9D9),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              height: 100,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    final image = images[index];
                    return Container(
                      height: 500,
                      width: 500,
                      child: Image.network(image['urls']['small']),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
