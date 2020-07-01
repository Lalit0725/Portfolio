import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/TextCard.dart';

class Skills extends StatelessWidget {
  const Skills();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: ListView(
        children: <Widget>[
          TextCard(
              color: Colors.white,
              text: 'Skills',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Unity',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Unreal',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Flutter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Photoshop',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Illustrator',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'After Effects',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          TextCard(
              color: Colors.white,
              text: 'Languages',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'C#',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'C++',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'HTML & CSS',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text: 'Dart',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
        ],
      ),
    );
  }
}
