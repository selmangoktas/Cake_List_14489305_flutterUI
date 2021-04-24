import 'package:bookmark_app_14489305/widgets/label/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class HomeGridButtonContainer extends StatefulWidget {
  final Color color;
  final String text;
  final Color textColor;
  final String image;
  final String fontsize;

  const HomeGridButtonContainer({
    Key key,
    @required this.color,
    @required this.text,
    this.textColor,
    this.image,
    this.fontsize,
  }) : super(key: key);

  @override
  _HomeGridButtonContainerState createState() =>
      _HomeGridButtonContainerState();
}

class _HomeGridButtonContainerState extends State<HomeGridButtonContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            (widget.color != null ? widget.color : Colors.pink).withOpacity(.2),
        borderRadius: BorderRadius.all(
          Radius.circular(size.width * .1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(3),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgContainer(
                  width: 100,
                  color: widget.color,
                  image: widget.image != null
                      ? widget.image
                      : 'assets/images/bell.svg'),
            ),
          ),
          LabelContainer(
            text: widget.text != null ? widget.text : 'Home',
            color: widget.color != null
                ? widget.color.withOpacity(.8)
                : Colors.white,
            fontsize: widget.fontsize != null ? widget.fontsize : 15,
            bold: FontWeight.w900,
          ),
        ],
      ),
    );
  }
}
