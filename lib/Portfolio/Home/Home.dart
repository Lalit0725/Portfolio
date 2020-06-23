import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Center(
              child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[700],
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                )
              ],
            ),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/Lalit.jpg')),
          )),
          textCard(Colors.grey[100], 'Unity Dveloper', FontStyle.normal,
              FontWeight.bold, 25),
          textCard(
              Colors.grey[100],
              'I\'m Lalit, programmer. I love to play games, bringing it further I want to make games, wanna be an aspiring Game Developer.',
              FontStyle.italic,
              FontWeight.normal,
              20),
          Container(
            child: Center(
              child: Wrap(
                children: <Widget>[
                  contactButtons(
                      icon: Icons.phone, name: 'Call me', function: _callMe),
                  contactButtons(
                      icon: Entypo.mail,
                      name: 'E-mail me',
                      function: _sendMail),
                  contactButtons(
                      icon: FontAwesome.linkedin_square,
                      name: 'Linkedin',
                      function: _openLinkedIn),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container textCard(Color color, String text, FontStyle fontStyle,
      FontWeight fontWeight, double fontSize) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: myBoxDecoration(color), //
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration(Color color) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey[700],
          blurRadius: 4.0,
          spreadRadius: 1.0,
        )
      ],
      color: color,
      border: Border.symmetric(
          vertical: BorderSide(width: 2), horizontal: BorderSide(width: 3)),
    );
  }

  Padding contactButtons({IconData icon, String name, Function function}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton.icon(
        elevation: 5.0,
        onPressed: function,
        color: Colors.grey[800],
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

_callMe() async {
  if (Platform.isAndroid) {
    const uri = 'tel: +91 9042227145';
    if (await canLaunch(uri)) {
      await launch(uri);
    }
  } else if (Platform.isIOS) {
    // iOS
    const uri = 'tel: +91 9042227145';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}

_sendMail() async {
  // Android and iOS
  const uri =
      'mailto:lalitsolanki0725@gmail.com?subject=This mail is regrading &body=Hello%20Lalit M,\n ';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

_openLinkedIn() async {
  // Android and iOS
  const uri = 'http:www.linkedin.com/in/lalit-m-57405715a';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}
