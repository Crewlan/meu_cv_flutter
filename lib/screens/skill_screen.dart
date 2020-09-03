import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillScreen extends StatefulWidget {
  @override
  _SkillScreenState createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('about')
            .doc('skills')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return new Text("Carregando");
          } else {
            return Scaffold(
              body: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.blue[300]),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 2,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 60.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(snapshot.data.data()['title'], style: GoogleFonts.anaheim(
                              fontSize: 25
                            ),),
                            SizedBox(height: 15.0),
                            Text(snapshot.data.data()['subtitle'], style: GoogleFonts.anaheim(
                              fontSize: 20
                            ),),
                            SizedBox(height: 15.0),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height - 275.0,
                              left: 20.0,
                              right: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(snapshot.data.data()['description'], style: GoogleFonts.anaheim(
                              fontSize: 20
                            ),),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            );
          }
        });
  }
}
