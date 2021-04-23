import 'package:bookmark_app_14489305/widgets/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class HomeLabelRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LabelContainer(
          text: 'Categories',
        ),
        SizedBox(
          width: size.width * 0.2,
        ),
        SvgContainer(
            image: 'assets/images/trash.svg', color: Colors.blueGrey[100]),
        SizedBox(
          width: 5,
        ),
        SvgContainer(
            image: 'assets/images/editpen.svg', color: Colors.blueGrey[100]),
        SizedBox(
          width: 5,
        ),
        SvgContainer(
            image: 'assets/images/arrows.svg', color: Color(0xFF6c60e0)),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
