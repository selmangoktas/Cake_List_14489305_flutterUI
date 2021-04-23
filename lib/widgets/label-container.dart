import 'package:flutter/material.dart';

class LabelContainer extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight bold;
  final TextAlign textAlign;

  const LabelContainer(
      {Key key,
      @required this.text,
      this.color,
      this.fontsize,
      this.bold,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: color != null ? color : Color(0xFF868696),
          fontSize: fontsize != null ? fontsize : 30,
          fontWeight: bold != null ? bold : FontWeight.w700,
        ),
        textAlign: textAlign != null ? textAlign : TextAlign.justify,
      ),
    );
  }
}
