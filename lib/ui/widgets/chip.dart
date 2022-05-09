import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class FeelingChip extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  const FeelingChip({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [Color(0xffF44369), Color(0xff3E3B92)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
            child: Text(
          "Love",
          style: TextStyle(color: white),
        )),
      ),
    );
  }
}
