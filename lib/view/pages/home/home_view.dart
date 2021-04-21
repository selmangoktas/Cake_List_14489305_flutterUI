import 'package:flutter/material.dart';

class HomeGridViewPage extends StatefulWidget {
  @override
  _HomeGridViewPageState createState() => _HomeGridViewPageState();
}

class _HomeGridViewPageState extends State<HomeGridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.pink,
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
