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
  var appBarDetail = [
    {
      "title": "Home",
      "alert": 5,
      "topLeftImage": "",
      "topRightImage": "assets/images/bell1.svg"
    },
    {
      "title": "Cooking",
      "alert": 0,
      "topLeftImage": "assets/images/leftArrow.svg",
      "topRightImage": "assets/images/bell1.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: false,
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.all(1),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.width * .5),
          child: Padding(
            padding: EdgeInsets.zero,
            child: AppBarContainer(
              title: appBarDetail[widget.currentIndex]['title'],
              alert: appBarDetail[widget.currentIndex]['alert'],
              topLeftImage: appBarDetail[widget.currentIndex]['topLeftImage'],
              topRightImage: appBarDetail[widget.currentIndex]['topRightImage'],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: pages[widget.currentIndex],
          ),
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
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 0;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: 'assets/images/home_.svg',
                    defaultIncon:
                        'assets/images/home.svg', // Icons.home_outlined,
                    thisIndex: 0,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.currentIndex = 1;
                    });
                  },
                  child: BottomBarItemWidget(
                    activeIcon: 'assets/images/star_.svg',
                    defaultIncon: 'assets/images/star.svg',
                    thisIndex: 1,
                    activeIndex: widget.currentIndex,
                    size: size,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF6c60e0).withOpacity(.8),
        ),
      ),
    );
  }
}
