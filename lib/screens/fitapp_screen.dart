import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class FitAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child:  AspectRatio(aspectRatio: 0.5,
            child: Carousel(
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotBgColor: Colors.transparent,
                dotColor: Theme.of(context).primaryColor,
                autoplay: true,
                autoplayDuration: const Duration(milliseconds: 7000),
                images: [
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2Flogo.png?alt=media&token=c837ce56-f45e-48f5-b575-fd77925fe1ef'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F1.jpg?alt=media&token=d25903ee-5c8b-4ee8-b369-c5099e06b70e'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F2.jpg?alt=media&token=9c696db4-5813-455a-a7bf-3322ba74bff7'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F3.jpg?alt=media&token=977e038c-3d8a-485b-8011-12ef92c5e98b'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F4.jpg?alt=media&token=4a451e2e-07ac-4477-ae60-f84e542d4da4'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F5.jpg?alt=media&token=ca56821a-991d-4248-adcb-2224094eb489'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/fitapp%2F6.jpg?alt=media&token=35d67e1d-614f-4fdd-82a1-f190dbf18206'),
                  
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
