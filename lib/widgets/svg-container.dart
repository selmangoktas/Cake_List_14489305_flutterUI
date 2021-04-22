import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgContainer extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final Color color;

  const SvgContainer(
      {Key key, @required this.image, this.height, this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      height: height != null ? height : 25,
      width: width != null ? width : 25,
      color: color != null ? color : Colors.white,
    );
  }
}
