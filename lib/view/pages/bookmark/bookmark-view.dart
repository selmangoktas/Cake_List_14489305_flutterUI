import 'package:bookmark_app_14489305/widgets/label-container.dart';
import 'package:flutter/material.dart';

var model = [
  {"name": "All", "active": "false"},
  {"name": "Cake", "active": "true"},
  {"name": "Fast Food", "active": "false"},
  {"name": "Sugar", "active": "false"},
  {"name": "Donat", "active": "false"},
  {"name": "Add", "active": "false"},
];

class BooksMarkViewPage extends StatefulWidget {
  @override
  _BooksMarkViewPageState createState() => _BooksMarkViewPageState();
}

class _BooksMarkViewPageState extends State<BooksMarkViewPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelContainer(
          text: 'Categories',
        ),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: model.length,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              width: size.width * .2,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LabelContainer(
                      text: model[index]["name"],
                      textAlign: TextAlign.justify,
                      fontsize: 10,
                      color: model[index]["name"] == "true"
                          ? Color(0xFF6c60e0).withOpacity(.8)
                          : Colors.white.withOpacity(.8).withAlpha(50),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8).withAlpha(50),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
