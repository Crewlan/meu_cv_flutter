import 'package:flutter/material.dart';
import 'package:meu_cv_flutter/screens/home_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:nice_intro/nice_intro.dart';
import 'package:tinycolor/tinycolor.dart';

class IntroSplashScreen extends StatefulWidget {
  @override
  _IntroSplashScreenState createState() => _IntroSplashScreenState();
}

class _IntroSplashScreenState extends State<IntroSplashScreen> {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      skipText: 'Pular',
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
      onSkip: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
      footerBgColor: TinyColor(Colors.blue).lighten().color,
      activeDotColor: Colors.white,
      footerRadius: 18.0,
//      indicatorType: IndicatorType.CIRCLE,
      slides: [
        IntroScreen(
          title: 'Olá',
          imageAsset: 'assets/img/flogo.png',
          description: 'Este app esta totalmente em Flutter. Ao clicar no card ele ira abri um outro card e no segundo card é clicavel para ver mais informações',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Desenvolvimento',
          headerBgColor: Colors.white,
          imageAsset: 'assets/img/alogo.png',
          description: "Feito para Recrutadores e Empresas verem meu perfil e portfolio.",
        ),
        IntroScreen(
          title: 'Lojas',
          headerBgColor: Colors.white,
          imageAsset: 'assets/img/mlogo.png',
          description: "Atualmente presente na Google Play e Futuramente na Apple Store e Web",
        ),
      ],
    );
    return Scaffold(
      body: screens,
    );
  }
}