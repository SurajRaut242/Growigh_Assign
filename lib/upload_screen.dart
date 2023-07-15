import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});
  static const String id = 'upload_image';
  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Upload Image',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 250,
              width: 350,
              child: Image.asset('images/img_8.png'),
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  // Select image from gallery
                },
                child: Image.asset('images/img_6.png')),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  //Upload image from gallery
                },
                child: Image.asset('images/img_7.png')),
          ],
        ),
      ),
    ));
  }
}
