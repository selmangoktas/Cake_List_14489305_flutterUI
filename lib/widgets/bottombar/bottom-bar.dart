import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class BottomBarItemWidget extends StatelessWidget {
  final activeIndex;
  final thisIndex;

  final size;
  final String activeIcon;
  final String defaultIncon;

  BottomBarItemWidget({
    @required this.activeIndex,
    @required this.size,
    @required this.thisIndex,
    @required this.activeIcon,
    @required this.defaultIncon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgContainer(
            image: activeIndex == thisIndex ? activeIcon : defaultIncon,
            width: 35,
            height: 35,
            color: activeIndex == thisIndex
                ? Color(0xFF6c60e0).withOpacity(.8)
                : Color(0xFF6c60e0).withOpacity(.2),
          ),
          /*Icon(
            activeIndex == thisIndex ? activeIcon : defaultIncon,
            size: 35,
            color: activeIndex == thisIndex
                ? Color(0xFF6c60e0).withOpacity(.8)
                : Color(0xFF6c60e0).withOpacity(.2),
          ),*/
        ],
      ),
    );
  }
}
