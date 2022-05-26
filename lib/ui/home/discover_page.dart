import 'package:bee_guided/model/response/category_model.dart';
import 'package:bee_guided/ui/widgets/chip.dart';
import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: context.watch<CategoryProvider>().itemCount == 0
          ? const Center(child: CircularProgressIndicator())
          : Padding(
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
                  Expanded(
                    flex: 2,
                    child: GridView.builder(
                      itemCount: context.read<CategoryProvider>().itemCount,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return FeelingChip(
                          title: context
                              .read<CategoryProvider>()
                              .category
                              .data![index]
                              .desc,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
