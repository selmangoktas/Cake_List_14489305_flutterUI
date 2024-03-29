import 'package:bookmark_app_14489305/view/pages/home/widget/home-grid-botton-container.dart';
import 'package:flutter/material.dart';

var model = [
  {
    "color": Colors.orange,
    "text": "New Ideas",
    "image": "assets/images/lamp.svg"
  },
  {"color": Colors.green, "text": "Music", "image": "assets/images/music.svg"},
  {
    "color": Colors.purple,
    "text": "Programming",
    "image": "assets/images/monitor.svg"
  },
  {
    "color": Colors.pinkAccent,
    "text": "Cooking",
    "image": "assets/images/burger.svg"
  },
  {
    "color": Colors.blue,
    "text": "Flighting",
    "image": "assets/images/flight.svg"
  },
  {"color": Colors.brown, "text": "Atom", "image": "assets/images/atom.svg"}
];

class HomeGridButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
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
    );
  }
}
