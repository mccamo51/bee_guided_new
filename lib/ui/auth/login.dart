import 'package:bee_guided/ui/auth/register.dart';
import 'package:bee_guided/ui/home/home_with_nav.dart';
import 'package:bee_guided/ui/widgets/buttons.dart';
import 'package:bee_guided/ui/widgets/social_buttons.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/util/images.dart';
import 'package:bee_guided/view_model/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: white,
      appBar: appBar,
      body: context.watch<UserProvider>().isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Email Address"),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hint: 'Enter Email Address',
                        controller: emailCtrl,
                        validate: true,
                        emailValidate: true,
                        errorMsg: 'Email required',
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
                        controller: passCtrl,
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        validate: true,
                        errorMsg: 'Password required',
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
                            if (_formKey.currentState!.validate()) {
                              context
                                  .read<UserProvider>()
                                  .login(emailCtrl.text, passCtrl.text)
                                  .then((value) {
                                if (value) {
                                  // print(value);
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const HomeWithNav()),
                                      (route) => false);
                                } else {
                                  // const SnackBar(
                                  //   content: Text("Failed"),
                                  // );
                                }
                              });
                            }
                          }),
                      TextButtonWidget(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => RegisterPage()));
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
              ),
            ),
    );
  }
}
