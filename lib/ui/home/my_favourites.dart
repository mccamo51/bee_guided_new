import 'package:bee_guided/ui/widgets/my_favorite_card.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/favorite_provider.dart';
import 'package:flutter/material.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text(
            "My Favourite",
            style: TextStyle(
                color: black, fontSize: 28, fontWeight: FontWeight.w700),
          ),
          backgroundColor: white,
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return MyFavouriteCard(
              days: "122",
              quote: "Note",
              verse: "verse",
            );
          },
        ));
  }
}
