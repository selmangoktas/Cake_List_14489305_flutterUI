import 'package:bookmark_app_14489305/widgets/label-container.dart';
import 'package:bookmark_app_14489305/widgets/svg-container.dart';
import 'package:flutter/material.dart';

class HomeGridViewPage extends StatefulWidget {
  @override
  _HomeGridViewPageState createState() => _HomeGridViewPageState();
}

class _HomeGridViewPageState extends State<HomeGridViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabelContainer(
                text: 'Categories',
              ),
              SizedBox(
                width: size.width * 0.2,
              ),
              SvgContainer(
                  image: 'assets/images/trash.svg',
                  color: Colors.blueGrey[100]),
              SizedBox(
                width: 5,
              ),
              SvgContainer(
                  image: 'assets/images/editpen.svg',
                  color: Colors.blueGrey[100]),
              SizedBox(
                width: 5,
              ),
              SvgContainer(
                  image: 'assets/images/arrows.svg', color: Color(0xFF6c60e0)),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),

        Container(
          child:  GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.pink.withOpacity(1)),
                child: LabelContainer(
                  text: 'Home',
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        ),
        
      ],
    );
  }
}
