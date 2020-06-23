import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: ListView(
        children: <Widget>[
          textCard(
              Colors.white, 'Skills', FontStyle.normal, FontWeight.bold, 20),
          Center(
              child: textCard(Colors.white, 'Unity', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'Unreal', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'Flutter', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'Photoshop', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'Illustrator', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'After Effects', FontStyle.normal,
                  FontWeight.bold, 20)),
          textCard(
              Colors.white, 'Languages', FontStyle.normal, FontWeight.bold, 20),
          Center(
              child: textCard(Colors.white, 'C#', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'C++', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'HTML & CSS', FontStyle.normal,
                  FontWeight.bold, 20)),
          Center(
              child: textCard(Colors.white, 'Dart', FontStyle.normal,
                  FontWeight.bold, 20)),
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
