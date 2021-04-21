import 'package:flutter/material.dart';

class BottomBarItemWidget extends StatelessWidget {
  final activeIndex;
  final thisIndex;

  final size;
  final IconData activeIcon;
  final IconData defaultIncon;

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
          Icon(
            activeIndex == thisIndex ? activeIcon : defaultIncon,
            size: 35,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
