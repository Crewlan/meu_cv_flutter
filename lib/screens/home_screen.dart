import 'package:flutter/material.dart';
import 'package:meu_cv_flutter/screens/apps_screen.dart';
import 'package:meu_cv_flutter/screens/profile_screen.dart';
import 'package:meu_cv_flutter/screens/skill_screen.dart';
import 'package:meu_cv_flutter/widget/custom_slimycard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSlimyCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    showMore: 'Sobre Mim',
                    cor: Colors.greenAccent,
                    image1: Icon(Icons.person_outline),
                  ),
                  CustomSlimyCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AppsScreen(),
                        ),
                      );
                    },
                    showMore: 'Meus Apps',
                    cor: Colors.blueGrey,
                    image1: Icon(Icons.touch_app),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSlimyCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SkillScreen(),
                        ),
                      );
                    },
                    showMore: 'Minhas Skills',
                    cor: Colors.greenAccent,
                    image1: Icon(Icons.gamepad),
                  ),
                  CustomSlimyCard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AppsScreen(),
                        ),
                      );
                    },
                    showMore: 'Codigo',
                    cor: Colors.blueGrey,
                    image1: Icon(Icons.code),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
