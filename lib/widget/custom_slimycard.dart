import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slimy_card/slimy_card.dart';

class CustomSlimyCard extends StatelessWidget {


  final Color cor;
  final Icon image1;
  final Function() onTap;
  final String showMore;

  const CustomSlimyCard({Key key, this.image1, this.cor, this.onTap, this.showMore}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SlimyCard(
      color: cor,
      width: 150,
      topCardHeight: 200,
      bottomCardHeight: 200,
      borderRadius: 15,
      topCardWidget: image1,
      bottomCardWidget: GestureDetector(
        onTap: onTap,
        child: Text(showMore, style: GoogleFonts.inconsolata(
          fontSize: 18
        )),
      ),
      slimeEnabled: true,
    );
  }
}
