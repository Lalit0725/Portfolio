import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/TextCard.dart';

class Works extends StatelessWidget {
  const Works();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: ListView(
        children: <Widget>[
          TextCard(
              color: Colors.white,
              text: 'Professional info',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text:
                      'Am a unity developer having intermediate knowledge in Gaming, Augment reality and Virtual reality. I love to explore  technologies and love to keep things updated.',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text:
                      'Am currently learing Flutter a hybrid solution for the native apps.\n This app is developed in Flutter. ',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          TextCard(
              color: Colors.white,
              text: 'Work Experience',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text:
                      'Internship at Flex India \n Unity Developer\n Worked in AR and VR apps. \n​July 2019 - September 2019 ',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text:
                      'Full-time at TNQ Ingage\n Junior Unity Developer\n February 2020 - May 2020 ',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
          TextCard(
              color: Colors.white,
              text: 'Education',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          Center(
              child: TextCard(
                  color: Colors.white,
                  text:
                      'ICAT Design and Media College\n ​2017 - present\n B.Sc. Game Development',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 20)),
        ],
      ),
    );
  }
}
