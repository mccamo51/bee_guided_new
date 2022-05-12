import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class BibleVerseCard extends StatelessWidget {
  final String quotation, bibleVerse;
  const BibleVerseCard(
      {Key? key, required this.quotation, required this.bibleVerse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: Container(
        width: double.infinity,
        color: bg,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quotation,
              style: const TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              bibleVerse,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
