import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class MyFavouriteCard extends StatelessWidget {
  final String? quote, verse, days;
  const MyFavouriteCard(
      {Key? key, required this.quote, required this.verse, required this.days})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        // height: 160,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 2,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    flex: 10,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(quote!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(verse!),
                        ],
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              days!,
              style: const TextStyle(
                color: lightGray,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
