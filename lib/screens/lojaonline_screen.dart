import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class LojaOnlineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
              child: AspectRatio(
            aspectRatio: 0.5,
            child: Carousel(
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: Theme.of(context).primaryColor,
              autoplay: true,
              autoplayDuration: const Duration(milliseconds: 7000),
              images: [
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline1.jpeg?alt=media&token=029e4bca-ffcf-4e79-9b38-5deb3df755c8'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline2.jpeg?alt=media&token=142e4cbc-e62e-41bb-b28e-4faec92b4500'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline3.jpeg?alt=media&token=da9ba10e-c6f6-40c5-9793-8b6f06ba1ac1'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline4.jpeg?alt=media&token=3919b8dc-6e5a-4acb-abf4-a25609d94a9e'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline5.jpeg?alt=media&token=c918810b-caba-418d-80fd-cdf95320840f'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline6.jpeg?alt=media&token=a3cc6c7a-d5e4-4dbc-a066-4e7234cc84a0'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline7.jpeg?alt=media&token=55dea269-99ef-4af3-a12f-d539a385f180'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline8.jpeg?alt=media&token=d682f2a1-e7ae-4a75-8cf2-c458ba5b0197'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline9.jpeg?alt=media&token=ae75abf1-543d-4fc5-ad79-e74ea7b8b2ed'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline10.jpeg?alt=media&token=3e3cfa19-a98a-44ea-a587-a7316edf6929'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline11.jpeg?alt=media&token=22a19f24-4971-4908-9e99-eded4b359e8f'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline12.jpeg?alt=media&token=1cfa9ce4-46d8-45a7-a902-81ae8d4d7e8f'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline13.jpeg?alt=media&token=72943a84-3187-477b-a917-169a4d615a67'),
                NetworkImage('https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/loja_online%2Flojaonline14.jpeg?alt=media&token=4e13959e-2cad-471a-aa12-a932b10b5f39'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
