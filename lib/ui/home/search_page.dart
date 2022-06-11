import 'package:bee_guided/ui/widgets/bible_verse_card.dart';
import 'package:bee_guided/ui/widgets/chip.dart';
import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/DropdownWidget.dart';

class SearchPage extends StatefulWidget {
  final String? searchID, searchName;
  const SearchPage({Key? key, required this.searchID, required this.searchName})
      : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CategoryProvider>().searchCategory(widget.searchID!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: context.watch<CategoryProvider>().isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BackButton(
                                  // padding: EdgeInsets.zero,
                                  // icon: Icon(Icons.arrow_back),
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
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const [
                                  FeelingChip(title: "Hello"),
                                  FeelingChip(title: "Hello"),
                                  FeelingChip(title: "Hello"),
                                  FeelingChip(title: "Hello"),
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
                                          context: context,
                                          builder: (builder) {
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
                                  side:
                                      BorderSide(width: 0.7, color: lightGray),
                                  backgroundColor: white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Chip(
                                  label: Text('KJV/NIV'),
                                  side:
                                      BorderSide(width: 0.7, color: lightGray),
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
                      if (context
                              .watch<CategoryProvider>()
                              .singleCat
                              .data!
                              .length >
                          0)
                        Column(
                          children: [
                            for (var x in context
                                .watch<CategoryProvider>()
                                .singleCat
                                .data!)
                              BibleVerseCard(
                                quotation: "${x.book} ${x.verse}",
                                bibleVerse: "${x.verseDetails}",
                              ),
                          ],
                        )
                      else
                        Container(
                          child: const Center(child: Text("No data")),
                        )
                    ],
                  ),
                ),
              ));
  }
}
