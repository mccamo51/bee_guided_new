// import 'package:bee_guided/ui/auth/verify_user.dart';
import 'package:bee_guided/ui/auth/login.dart';
import 'package:bee_guided/ui/getstarted/onboard.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/category_provider.dart';
import 'package:bee_guided/view_model/favorite_provider.dart';
import 'package:bee_guided/view_model/user_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: 'Lora',
                  primaryColor: primaryColor,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                home: Onboarding());
            // home: const LoginPage());
          
}
}