import 'package:bookmark_app_14489305/widgets/label-container.dart';
import 'package:flutter/material.dart';

class BooksMarkViewPage extends StatefulWidget {
  @override
  _BooksMarkViewPageState createState() => _BooksMarkViewPageState();
}

class _BooksMarkViewPageState extends State<BooksMarkViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     LabelContainer(
          text: 'Categories',
        ),
      ],
    );
  }
}
