import 'package:bee_guided/ui/widgets/buttons.dart';
import 'package:bee_guided/ui/widgets/social_buttons.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/util/images.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: white,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Full Name"),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Enter Full Name',
              controller: nameCtrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Email Address"),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Enter Email Address',
              controller: emailCtrl,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Password"),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Enter Password',
              controller: passwordCtrl,
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Must contain at least one number. Minimum 8 characters",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            AuthButton(title: 'Log in', onTap: () {}),
            TextButtonWidget(
                onTap: () {}, title: 'Already have an Account ? Login ?'),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            const SocialButton(image: googleLogo, title: 'Signup with Google'),
            const SizedBox(
              height: 20,
            ),
            const SocialButton(image: appleLogo, title: 'Signup with Apple'),
          ],
        ),
      ),
    );
  }
}
