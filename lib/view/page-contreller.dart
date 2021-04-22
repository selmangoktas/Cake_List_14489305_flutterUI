import 'package:bookmark_app_14489305/view/pages/bookmark/bookmark-view.dart';
import 'package:bookmark_app_14489305/view/pages/home/home_view.dart';
import 'package:bookmark_app_14489305/widgets/appbar/appBar-container.dart';
import 'package:bookmark_app_14489305/widgets/bottombar/bottom-bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainHomePageView extends StatefulWidget {
  var currentIndex;

  MainHomePageView({Key key, @required this.currentIndex}) : super(key: key);

  @override
  _MainHomePageViewState createState() => _MainHomePageViewState();
}

class _MainHomePageViewState extends State<MainHomePageView> {
  var pages = [
    HomeGridViewPage(),
    BooksMarkViewPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppBarContainer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: pages[widget.currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.centerLeft,
        width: size.width,
        height: 60,
        child: BottomAppBar(
          notchMargin: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              pageViewInkWell(size, 0, Icons.home, Icons.home_outlined),
              pageViewInkWell(size, 1, Icons.star, Icons.star_outline_outlined),
            ],
          ),
        ),
      ),
    );
  }

  InkWell pageViewInkWell(
    Size size,
    var currentIndex,
    IconData activeIcon,
    IconData defaultIncon,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.currentIndex = currentIndex;
        });
      },
      child: BottomBarItemWidget(
        activeIcon: activeIcon, //Icons.home,
        defaultIncon: defaultIncon,
        thisIndex: 0,
        activeIndex: widget.currentIndex,
        size: size,
      ),
    );
  }
}
