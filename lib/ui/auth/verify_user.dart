import 'package:bee_guided/ui/widgets/app_bar_widget.dart';
import 'package:bee_guided/ui/widgets/buttons.dart';
import 'package:bee_guided/ui/widgets/text_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class VerifyUser extends StatelessWidget {
  const VerifyUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Email Address"),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              hint: 'Enter Email Address',
            ),
            const SizedBox(
              height: 20,
            ),
            AuthButton(title: 'Log in', onTap: () {}),
            const SizedBox(
              height: 20,
            ),
            Center(child: TextButtonWidget(title: 'RESEND 00:30', onTap: () {}))
          ],
        ),
      ),
    );
  }
}
