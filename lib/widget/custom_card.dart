import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final TextStyle googleFonts;
  final Icon icon;
  final Function() onPressed;
  final Function() onTap;
  final IconData iconBt;
  final Color colorbt;
  final String titlebt;

  final GlobalKey key1;

  const CustomCard(
      {Key key,
      this.title,
      this.icon,
      this.onPressed,
      this.onTap,
      this.googleFonts, this.iconBt, this.colorbt, this.key1, this.titlebt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Text(title, style: googleFonts),
                  Spacer(),
                  new ButtonBar(
                    children: <Widget>[
                      RoundedButtonWithIcon(
                    onPressed: onPressed,
                    icon: iconBt,
                     title: titlebt
                  ),
                      new IconButton(
                        icon: icon,
                        onPressed: onTap,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
