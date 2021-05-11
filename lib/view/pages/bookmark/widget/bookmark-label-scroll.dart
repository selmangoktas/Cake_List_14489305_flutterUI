import 'package:bookmark_app_14489305/widgets/label/label-container.dart';
import 'package:flutter/material.dart';

var model = [
  {"name": "All", "active": "false"},
  {"name": "Cake", "active": "true"},
  {"name": "Fast Food", "active": "false"},
  {"name": "Sugar", "active": "false"},
  {"name": "Donat", "active": "false"},
  {"name": "Add", "active": "true"},
];

class BookMarkLabelScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: model.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100,
          //height: 1,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: model[index]["active"] == "true"
                ? Color(0xFF6c60e0).withOpacity(.8)
                : Color(0xFF6c60e0).withOpacity(.1),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Center(
            child: LabelContainer(
              text: model[index]["name"],
              textAlign: TextAlign.justify,
              fontsize: 18,
              color: model[index]["active"] == "true"
                  ? Colors.white
                  : Color(0xFF6c60e0).withOpacity(.4),
            ),
          ),
        );
      },
    );
  }
}
