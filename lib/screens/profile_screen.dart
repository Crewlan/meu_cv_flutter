import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('about')
            .doc('me')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return new Text("Carregando");
          } else {
            return Scaffold(
              body: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(
                        height: MediaQuery.of(context).size.height / 3,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1541800569-95a8b25835f0?ixlib=rb-1.2.1&w=1000&q=80'),
                      ),
                      Positioned(
                          bottom: 30,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C4D03AQGr7G8OnjlJ7g/profile-displayphoto-shrink_200_200/0?e=1603929600&v=beta&t=umiXQSmOcd17cbj7FYGe6yF5t-YmsMlCnOn3tgNxadw'),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(snapshot.data.data()['name']),
                    subtitle: Text(snapshot.data.data()['subtitle']),
                  ),
                  ListTile(
                    subtitle: Text(snapshot.data.data()['description']),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text('Minhas Redes Socias e CV', style: GoogleFonts.abel(
                      fontSize: 20,
                      color: Colors.blueGrey
                    ),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GithubButton(onPressed: (){
                        _github();
                  }),
                  LinkedinButton(onPressed: (){
                    _linkedin();
                  })
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                      color: Colors.blueAccent,
                      child: Text(
                        'Fazer Download do CV',
                        style:
                            GoogleFonts.acme(fontSize: 18, color: Colors.white),
                      ),
                      onPressed: () {
                        _baixarcv();
                      })
                ],
              ),
            );
          }
        });
  }

  void _baixarcv() async {
  const url = 'https://drive.google.com/u/0/uc?id=1c0gqt7eHUZ7G0edjnPh_3ayR9FF6Zfu4&export=download';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _github() async {
  const url = 'https://github.com/Crewlan';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _linkedin() async {
  const url = 'https://www.linkedin.com/in/rascv/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

}
