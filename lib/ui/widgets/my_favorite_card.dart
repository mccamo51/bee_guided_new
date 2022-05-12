import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class MyFavouriteCard extends StatelessWidget {
  const MyFavouriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:5.0),
      child: Container(
        // height: 160,
        padding: const EdgeInsets.all(15),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(15), color: white),
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
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    flex: 10,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("John 3:16 NIV"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "16For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.J"),
                        ],
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "2days",
              style: TextStyle(
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
