import 'package:flutter/material.dart';

class Works extends StatelessWidget {
  const Works();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: ListView(
        children: <Widget>[
          textCard(Colors.white, 'Professional info', FontStyle.normal,
              FontWeight.bold, 20),
          Center(
              child: textCard(
                  Colors.white,
                  'Am a unity developer having intermediate knowledge in Gaming, Augment reality and Virtual reality. I love to explore  technologies and love to keep things updated.',
                  FontStyle.normal,
                  FontWeight.bold,
                  20)),
          Center(
              child: textCard(
                  Colors.white,
                  'Am currently learing Flutter a hybrid solution for the native apps.\n This app is developed in Flutter. ',
                  FontStyle.normal,
                  FontWeight.bold,
                  20)),
          textCard(Colors.white, 'Work Experience', FontStyle.normal,
              FontWeight.bold, 20),
          Center(
              child: textCard(
                  Colors.white,
                  'Internship at Flex India \n Unity Developer\n Worked in AR and VR apps. \n​July 2019 - September 2019 ',
                  FontStyle.normal,
                  FontWeight.bold,
                  20)),
          Center(
              child: textCard(
                  Colors.white,
                  'Full-time at TNQ Ingage\n Junior Unity Developer\n February 2020 - May 2020 ',
                  FontStyle.normal,
                  FontWeight.bold,
                  20)),
          textCard(
              Colors.white, 'Education', FontStyle.normal, FontWeight.bold, 20),
          Center(
              child: textCard(
                  Colors.white,
                  'ICAT Design and Media College\n ​2017 - present\n B.Sc. Game Development',
                  FontStyle.normal,
                  FontWeight.bold,
                  20)),
        ],
      ),
    );
  }

  Container textCard(Color color, String text, FontStyle fontStyle,
      FontWeight fontWeight, double fontSize) {
    return Container(
      margin: const EdgeInsets.all(7.0),
      padding: const EdgeInsets.all(7.0),
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
}
