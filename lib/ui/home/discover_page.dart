import 'package:bee_guided/ui/widgets/chip.dart';
import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

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
              height: 70,
            ),
            const Text(
              "Discover",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchTextField(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Search by Emotion",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
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
            )
          ],
        ),
      ),
    );
  }
}
