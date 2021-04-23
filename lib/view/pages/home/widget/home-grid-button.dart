import 'package:bookmark_app_14489305/view/pages/home/widget/home-grid-botton-container.dart';
import 'package:flutter/material.dart';

var model = [
  {
    "color": Colors.orange[100],
    "text": "New Ideas",
    "image": "assets/images/trash.svg"
  },
  {
    "color": Colors.green[100],
    "text": "Music",
    "image": "assets/images/zoom.svg"
  },
  {
    "color": Colors.purple[100],
    "text": "Programming",
    "image": "assets/images/bell.svg"
  },
  {
    "color": Colors.pink[100],
    "text": "Cooking",
    "image": "assets/images/trash.svg"
  },
  {
    "color": Colors.pink[100],
    "text": "Flighting",
    "image": "assets/images/editpen.svg"
  }
];

class HomeGridButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: size.width * .5,
            mainAxisExtent: size.width * .5,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return HomeGridButtonContainer(
            color: model[index]['color'], //Colors.pink[100],
            text: model[index]['text'],
            image: model[index]['image'],
          );
        },
      ),
    );
  }
}
