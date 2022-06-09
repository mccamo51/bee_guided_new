import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onbodrColor1,
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Skip"),
          )
        ],
      ),
    );
  }
}
