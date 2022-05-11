// import 'package:bee_guided/ui/auth/verify_user.dart';
import 'package:bee_guided/ui/home/discover_page.dart';
import 'package:bee_guided/ui/home/home.dart';
import 'package:bee_guided/ui/home/search_page.dart';
import 'package:bee_guided/ui/onboarding/feeling_screen.dart';
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
       theme: ThemeData(fontFamily: 'Lora'),
      debugShowCheckedModeBanner: false,
      home: const SearchPage(),
      // home: const RegisterPage(),
    );
  }
}
