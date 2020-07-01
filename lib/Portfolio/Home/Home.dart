import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/TextCard.dart';
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
            decoration: neumorphic(),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/Lalit.jpg')),
          )),
          TextCard(
              color: Colors.grey[100],
              text: 'Unity Dveloper',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 25),
          TextCard(
              color: Colors.grey[100],
              text:
                  'I\'m Lalit, programmer. I love to play games, bringing it further I want to make games, wanna be an aspiring Game Developer.',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
              fontSize: 20),
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

  BoxDecoration neumorphic() {
  return BoxDecoration(
    color: Colors.grey[300],
    boxShadow: [
      BoxShadow(
        color: Colors.grey[500],
        offset: Offset(5.0, 5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0,
      ),
      BoxShadow(
        color: Colors.white,
        offset: Offset(-5.0, -5.0),
        blurRadius: 15.0,
        spreadRadius: 1.0,
      ),
    ],
  );
}

  Padding contactButtons({IconData icon, String name, Function function}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton.icon(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        elevation: 5.0,
        onPressed: function,
        color: Colors.white,
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        label: Text(
          name,
          style: TextStyle(
            color: Colors.black,
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
