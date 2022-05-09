import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String image, title;
  const SocialButton({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            width: 7,
          ),
          Text(title),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.6,
          color: lightGray,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
