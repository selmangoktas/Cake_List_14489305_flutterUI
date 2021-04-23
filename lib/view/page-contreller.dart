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
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AppBarContainer(
            title: appBarDetail[widget.currentIndex]['title'],
            alert: appBarDetail[widget.currentIndex]['alert'],
            topLeftImage: appBarDetail[widget.currentIndex]['topLeftImage'],
            topRightImage: appBarDetail[widget.currentIndex]['topRightImage'],
          ),
          ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: pages[widget.currentIndex],
              ),
            ],
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
              InkWell(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 0;
                  });
                },
                child: BottomBarItemWidget(
                  activeIcon: Icons.home, //Icons.home,
                  defaultIncon: Icons.home_outlined,
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
                  activeIcon: Icons.star,
                  defaultIncon: Icons.star_outline_outlined,
                  thisIndex: 1,
                  activeIndex: widget.currentIndex,
                  size: size,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * .4,
          ),
          FloatingActionButton(
            elevation: 10,
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.add),
            backgroundColor: Color(0xFF6c60e0).withOpacity(.8),
          ),
          SizedBox(
            width: size.width * .4,
          ),
        ],
      ),
    );
  }
}
