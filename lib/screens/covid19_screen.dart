import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Covid19Screen extends StatelessWidget {
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
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/covid19_modular_mobx%2Fcovid19_mobx1.jpeg?alt=media&token=aa5d252b-86d1-411b-b1e6-b93c9e19d0f8'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/covid19_modular_mobx%2Fcovid19_mobx2.jpeg?alt=media&token=7b7cd779-4dc7-489b-bdb9-880777ec4daf'),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
