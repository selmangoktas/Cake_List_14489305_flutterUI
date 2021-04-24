import 'package:bookmark_app_14489305/view/pages/bookmark/widget/bookmark-label-scroll.dart';
import 'package:bookmark_app_14489305/widgets/label/home-label-row.dart';
import 'package:bookmark_app_14489305/widgets/label/label-container.dart';
import 'package:flutter/material.dart';

class BooksMarkViewPage extends StatefulWidget {
  @override
  _BooksMarkViewPageState createState() => _BooksMarkViewPageState();
}

class _BooksMarkViewPageState extends State<BooksMarkViewPage> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
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
            height: 50,
            child: BookMarkLabelScroll(),
          ),
        ),
      ],
    );
  }
}
