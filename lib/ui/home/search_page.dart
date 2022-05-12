import 'package:bee_guided/ui/widgets/bible_verse_card.dart';
import 'package:bee_guided/ui/widgets/chip.dart';
import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

import '../widgets/DropdownWidget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            Padding(
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
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Bible",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context, builder: (builder) {
                                  return const DropdownContainer();
                                });
                          },
                          icon: Icon(Icons.filter))
                    ],
                  ),
                  Row(
                    children: const [
                      Chip(
                        label: Text('English/NIV'),
                        side: BorderSide(width: 0.7, color: lightGray),
                        backgroundColor: white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Chip(
                        label: Text('OT/NT'),
                        side: BorderSide(width: 0.7, color: lightGray),
                        backgroundColor: white,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BibleVerseCard(
              quotation: 'John 3:16 NIV',
              bibleVerse:
                  'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.',
            ),
            const BibleVerseCard(
              quotation: 'John 3:16 NIV',
              bibleVerse:
                  'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.',
            ),
            const BibleVerseCard(
              quotation: 'John 3:16 NIV',
              bibleVerse:
                  'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.',
            ),
            const BibleVerseCard(
              quotation: 'John 3:16 NIV',
              bibleVerse:
                  'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.',
            )
          ],
        ));
  }
}
