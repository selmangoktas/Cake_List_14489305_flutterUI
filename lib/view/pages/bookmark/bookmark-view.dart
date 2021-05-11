import 'package:bookmark_app_14489305/view/pages/bookmark/widget/bookmark-label-scroll.dart';
import 'package:bookmark_app_14489305/widgets/label/home-label-row.dart';
import 'package:bookmark_app_14489305/widgets/label/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class BooksMarkViewPage extends StatefulWidget {
  @override
  _BooksMarkViewPageState createState() => _BooksMarkViewPageState();
}

class _BooksMarkViewPageState extends State<BooksMarkViewPage> {
  var cakes = [
    {'name': 'Vanilla Cake', 'image': 'assets/cakes/breey.svg'},
    {'name': 'Chery Cake', 'image': 'assets/cakes/chery.svg'},
    {'name': 'Cookies', 'image': 'assets/cakes/cookies.svg'},
    {'name': 'Donut', 'image': 'assets/cakes/donut.svg'},
    {'name': 'Heart Cake', 'image': 'assets/cakes/heart.svg'},
    {'name': 'Love Cake', 'image': 'assets/cakes/love.svg'},
    {'name': 'Man Cake', 'image': 'assets/cakes/man.svg'},
    {'name': 'Single Cake', 'image': 'assets/cakes/single.svg'},
    {'name': 'Weding Cake', 'image': 'assets/cakes/weding.svg'},
    {'name': 'Cheese Cake', 'image': 'assets/cakes/cheese.svg'},
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScrollView(
      //mainAxisAlignment: MainAxisAlignment.start,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          pinned: true,
          primary: false,
          backgroundColor: Colors.white,
          title: LabelContainer(
            text: 'Labels',
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 50,
            child: BookMarkLabelScroll(),
          ),
        ),
        SliverAppBar(
          pinned: true,
          primary: false,
          backgroundColor: Colors.white,
          title: HomeLabelRowWidget(
            title: 'Categories',
            icon1: 'assets/images/trash.svg',
            icon2: 'assets/images/editpen.svg',
            icon3: 'assets/images/arrows.svg',
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: size.height,
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cakes.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.pink[50].withOpacity(.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 0.1,
                          offset: Offset.infinite,
                          spreadRadius: 1.1,
                        )
                      ],
                    ),
                    width: size.width,
                    height: size.height * .1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.pink[50].withOpacity(.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 0.1,
                                offset: Offset.infinite,
                                spreadRadius: 1.1,
                              )
                            ],
                          ),
                          child: SvgContainer(
                            image: cakes[index]
                                ['image'], //'assets/cakes/breey.svg',
                            width: 80,
                            height: 80,

                            //color: Colors.grey,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            LabelContainer(
                              text: cakes[index]['name'], //'Vanilla Cake',
                              color: Color(0xFF868696),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgContainer(
                                  image: 'assets/images/bell.svg',
                                  color: Colors.grey,
                                ),
                                SvgContainer(
                                  image: 'assets/images/star.svg',
                                  color: Colors.grey,
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgContainer(image: 'assets/images/door.svg'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
