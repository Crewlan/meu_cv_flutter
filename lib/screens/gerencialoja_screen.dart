import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class GerenciaLojaScreen extends StatelessWidget {
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
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/gerencia_loja%2Fgerencia1.jpeg?alt=media&token=d664668c-d132-4d58-9023-74b43c617c4b'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/gerencia_loja%2Fgerencia2.jpeg?alt=media&token=0423aa86-4b54-40bc-816d-289b67058641'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/gerencia_loja%2Fgerencia3.jpeg?alt=media&token=6c3afe97-245f-4899-82aa-5a1451cbf5bb'),
                  NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/meucv-8ac4a.appspot.com/o/gerencia_loja%2Fgerencia4.jpeg?alt=media&token=8d627d73-c79e-4968-9045-a738d6b9b8ed'),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
