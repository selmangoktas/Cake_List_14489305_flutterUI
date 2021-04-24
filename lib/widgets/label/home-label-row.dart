import 'package:bookmark_app_14489305/widgets/label/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class HomeLabelRowWidget extends StatelessWidget {
  final String title;
  final String icon1;
  final String icon2;
  final String icon3;

  const HomeLabelRowWidget(
      {Key key,
      @required this.title,
      @required this.icon1,
      @required this.icon2,
      @required this.icon3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelContainer(
          text: title != null ? title : 'Categories',
        ),
        SizedBox(
          width: size.width * 0.2,
        ),
        SvgContainer(image: icon1, color: Colors.blueGrey[100]),
        SizedBox(
          width: 5,
        ),
        SvgContainer(image: icon2, color: Colors.blueGrey[100]),
        SizedBox(
          width: 5,
        ),
        SvgContainer(image: icon3, color: Color(0xFF6c60e0)),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
