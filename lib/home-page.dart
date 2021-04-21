import 'package:bookmark_app_14489305/view/pages/home/home_view.dart';
import 'package:bookmark_app_14489305/widgets/bottombar/bottom-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainHomePageView extends StatefulWidget {
  var currentIndex;

  MainHomePageView({Key key, @required this.currentIndex}) : super(key: key);

  @override
  _MainHomePageViewState createState() => _MainHomePageViewState();
}

class _MainHomePageViewState extends State<MainHomePageView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50,
              left: 10,
              right: 10,
              bottom: 10,
            ),
            alignment: Alignment.topCenter,
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
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      'Cooking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/bell1.svg',
                      height: 25,
                      width: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  width: size.width * .9,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          'assets/images/zoom.svg',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        ),
                        Text(
                          'what bookmark are you searching for?',
                          style: TextStyle(
                            decorationColor: Colors.white,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.8).withAlpha(50),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HomeGridViewPage(),
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
                  activeIcon: Icons.home,
                  defaultIncon: Icons.home_outlined,
                  thisIndex: 0,
                  activeIndex: widget.currentIndex,
                  size: size,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
