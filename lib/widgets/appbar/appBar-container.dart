import 'package:bookmark_app_14489305/widgets/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: 50,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      //alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Color(0xFF6c60e0).withOpacity(.8),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      width: size.width,
      height: size.height * .3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgContainer(image: 'assets/images/leftArrow.svg'),
              LabelContainer(
                text: 'Cooking',
                color: Colors.white,
              ),
              SvgContainer(image: 'assets/images/bell1.svg'),
            ],
          ),
          Container(
            height: 60,
            width: size.width * .9,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgContainer(image: 'assets/images/zoom.svg'),
                  LabelContainer(
                    text: 'what bookmark are you searching for?',
                    textAlign: TextAlign.justify,
                    fontsize: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.8).withAlpha(50),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
