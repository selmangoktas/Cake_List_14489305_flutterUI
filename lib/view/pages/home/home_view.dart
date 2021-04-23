import 'package:bookmark_app_14489305/view/pages/home/widget/home-grid-button.dart';
import 'package:bookmark_app_14489305/view/pages/home/widget/home-label-row.dart';
import 'package:flutter/material.dart';

class HomeGridViewPage extends StatefulWidget {
  @override
  _HomeGridViewPageState createState() => _HomeGridViewPageState();
}

class _HomeGridViewPageState extends State<HomeGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomeLabelRowWidget(),
        HomeGridButtonWidget(),
      ],
    );
  }
}
