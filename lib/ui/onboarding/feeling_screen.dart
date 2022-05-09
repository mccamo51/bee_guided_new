import 'package:bee_guided/ui/widgets/app_bar_widget.dart';
import 'package:bee_guided/ui/widgets/buttons.dart';
import 'package:bee_guided/util/color.dart';
// import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

import '../widgets/chip.dart';

class FeelingScreen extends StatelessWidget {
  const FeelingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const Text(
              "How are you feeling today?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,

              children:const [
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
            const Spacer(),
            Center(child: AuthButton(title: 'Continue', onTap: () {})),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: TextButtonWidget(title: 'Skip for now', onTap: () {})),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
