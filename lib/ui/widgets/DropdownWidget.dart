import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class DropdownContainer extends StatelessWidget {
  const DropdownContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Testament",
                style: TextStyle(
                  color: black,
                  fontFamily: "Roboto",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              ListTile(
                title: Text(
                  "All",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "New Testament",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Old Testament",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
