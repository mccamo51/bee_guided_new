import 'package:bee_guided/ui/widgets/my_favorite_card.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        body: context.watch<FavoritesProvider>().itemCount == 0
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount:
                    context.read<FavoritesProvider>().favorite.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return  MyFavouriteCard(
                    days:context.read<FavoritesProvider>().favorite.data![index].noteCode ,
                    quote: context.read<FavoritesProvider>().favorite.data![index].note,
                    verse: context.read<FavoritesProvider>().favorite.data![index].title,
                  );
                },
              ));
  }
}
