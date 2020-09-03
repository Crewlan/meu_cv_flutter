import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class BrooklynScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
              child: AspectRatio(
            aspectRatio: 0.6,
            child: Carousel(
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: Theme.of(context).primaryColor,
              autoplay: true,
              autoplayDuration: const Duration(milliseconds: 7000),
              images: [
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2Flogo.png?alt=media&token=853a84be-44db-4ff5-83f3-69902e0704df'),
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2F1.jpg?alt=media&token=1eb1e2c9-77d2-48fd-9d4d-e2fd363dd203'),
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2F2.jpg?alt=media&token=549fdc41-363a-4658-9f83-501897c74450'),
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2F3.jpg?alt=media&token=15b24096-8209-4a8f-9b9d-0f43842a0a5e'),
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2F4.jpg?alt=media&token=44aa6bb5-2345-44b2-b7b1-c1b52b010bb2'),
                NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/brook99%2F5.jpg?alt=media&token=d271753d-0e57-4dbf-8991-722ec6ecef1b'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
