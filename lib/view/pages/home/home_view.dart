import 'package:bookmark_app_14489305/view/pages/home/widget/home-grid-button.dart';
import 'package:bookmark_app_14489305/widgets/label/home-label-row.dart';
import 'package:flutter/material.dart';

class HomeGridViewPage extends StatefulWidget {
  @override
  _HomeGridViewPageState createState() => _HomeGridViewPageState();
}

class _HomeGridViewPageState extends State<HomeGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //mainAxisAlignment: MainAxisAlignment.start,
      physics: ScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          pinned: true,
          primary: false,
          title: HomeLabelRowWidget(
            title: 'Categories',
            icon1: 'assets/images/trash.svg',
            icon2: 'assets/images/editpen.svg',
            icon3: 'assets/images/arrows.svg',
          ),
          backgroundColor: Colors.white,
        ),
        SliverToBoxAdapter(
          child: HomeGridButtonWidget(),
        ),
      ],
    );
  }
}
