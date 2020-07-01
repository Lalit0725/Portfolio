import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    @required this.color,
    @required this.text,
    @required this.fontStyle,
    @required this.fontWeight,
    @required this.fontSize,
  }) : super(key: key);

  final Color color;
  final String text;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: neumorphic(),
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
}

BoxDecoration neumorphic() {
  return BoxDecoration(
    color: Colors.grey[300],
    borderRadius: BorderRadius.circular(20),
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
