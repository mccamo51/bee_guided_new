import 'package:bee_guided/ui/widgets/chip.dart';
import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                const Expanded(
                  flex: 2,
                  child: SearchTextField(),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Related Search",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                  FeelingChip(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Bible"),
                IconButton(onPressed: () {}, icon: Icon(Icons.filter))
              ],
            )
          ],
        ),
      ),
    );
  }
}
