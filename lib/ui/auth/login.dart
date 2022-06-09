import 'package:bee_guided/ui/auth/register.dart';
import 'package:bee_guided/ui/home/home_with_nav.dart';
import 'package:bee_guided/ui/widgets/buttons.dart';
import 'package:bee_guided/ui/widgets/social_buttons.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/util/images.dart';
import 'package:bee_guided/view_model/user_provider.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: white,
      appBar: appBar,
      body:  Padding(
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
                  const Text("Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hint: 'Enter Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButtonWidget(
                        title: "forgot password ?",
                        onTap: () {},
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthButton(
                      title: 'Log in',
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomeWithNav()),
                                (route) => false);
                          }
                      ),
                  TextButtonWidget(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => RegisterPage()));
                      },
                      title: 'Don’t have an Account ? Sign up'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialButton(
                      image: googleLogo, title: 'Signup with Google'),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialButton(
                      image: appleLogo, title: 'Signup with Apple'),
                ],
              ),
            ),
    );
  }
}
