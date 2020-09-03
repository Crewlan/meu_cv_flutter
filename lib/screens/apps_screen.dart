import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_cv_flutter/screens/brooklyn_screen.dart';
import 'package:meu_cv_flutter/screens/covid19_screen.dart';
import 'package:meu_cv_flutter/screens/fitapp_screen.dart';
import 'package:meu_cv_flutter/screens/gerencialoja_screen.dart';
import 'package:meu_cv_flutter/screens/lojaonline_screen.dart';
import 'package:meu_cv_flutter/widget/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            CustomCard(
              title: 'FitApp',
              googleFonts: GoogleFonts.reemKufi(
                fontSize: 18
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,),
              onPressed: _fitGPlay,
              onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FitAppScreen(),
                        ),
                      );
              },
              colorbt: Colors.grey,
              iconBt: Icons.remove_red_eye,
              titlebt: 'GooglePlay',
            ),
            CustomCard(
              title: 'Brooklyn 99 Sticker',
              googleFonts: GoogleFonts.reemKufi(
                fontSize: 15
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,),
              onPressed: _brookGPlay,
              onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BrooklynScreen(),
                        ),
                      );
              },
              colorbt: Colors.grey,
              iconBt: Icons.remove_red_eye,
              titlebt: 'GooglePlay',
            ),
            CustomCard(
              title: 'Loja Online Firebase',
              googleFonts: GoogleFonts.reemKufi(
                fontSize: 15
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,),
              onPressed: _lojaonline,
              onTap: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LojaOnlineScreen(),
                        ),
                      );
              },
              colorbt: Colors.grey,
              iconBt: Icons.remove_red_eye,
              titlebt: 'GitHub',
            ),
            CustomCard(
              title: 'Gerenciador de loja online',
              googleFonts: GoogleFonts.reemKufi(
                fontSize: 15
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,),
              onPressed: _gerenciadorloja,
              onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GerenciaLojaScreen(),
                        ),
                      );
              },
              colorbt: Colors.grey,
              iconBt: Icons.remove_red_eye,
              titlebt: 'GitHub',
            ),
            CustomCard(
              title: 'Covid 19 Modular/Mobx',
              googleFonts: GoogleFonts.reemKufi(
                fontSize: 15
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.blueAccent,),
              onPressed: _covid19,
              onTap: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Covid19Screen(),
                        ),
                      );
              },
              colorbt: Colors.grey,
              iconBt: Icons.remove_red_eye,
              titlebt: 'GitHub',
            ),
          ],
        ),
      ],
    ));
  }

  void _fitGPlay() async {
  const url = 'https://play.google.com/store/apps/details?id=com.wolfcodea.fitapp&hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _brookGPlay() async {
  const url = 'https://play.google.com/store/apps/details?id=com.wolfcode.stickers&hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


void _lojaonline() async {
  const url = 'https://github.com/Crewlan/loja_online_flutter_firebase';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _gerenciadorloja() async {
  const url = 'https://github.com/Crewlan/lojaonlinegerencia';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _covid19() async {
  const url = 'https://github.com/Crewlan/covid19_modular_mobx';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

}
