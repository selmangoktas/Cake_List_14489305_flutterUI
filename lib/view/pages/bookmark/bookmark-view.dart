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
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(.2),
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
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/cakes/breey.svg'), //selman
                            ),
                            color: Colors.pink.withOpacity(.2),
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
                            image: 'assets/cakes/breey.svg',
                            width: 80,
                            height: 80,

                            //color: Colors.grey,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelContainer(
                              text: 'Vanilla Cake',
                              color: Color(0xFF868696),
                            ),
                            Row(
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
