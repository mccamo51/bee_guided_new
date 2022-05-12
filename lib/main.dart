// import 'package:bee_guided/ui/auth/verify_user.dart';
import 'package:bee_guided/ui/home/bible_version.dart';
import 'package:bee_guided/ui/home/discover_page.dart';
import 'package:bee_guided/ui/home/home.dart';
import 'package:bee_guided/ui/home/my_favourites.dart';
import 'package:bee_guided/ui/home/note/add_note.dart';
import 'package:bee_guided/ui/home/note/note.dart';
import 'package:bee_guided/ui/home/notification.dart';
import 'package:bee_guided/ui/home/profile/profile.dart';
import 'package:bee_guided/ui/home/search_page.dart';
import 'package:bee_guided/ui/home/settings/more.dart';
import 'package:bee_guided/ui/home/settings/settings.dart';
import 'package:bee_guided/ui/home/view_verse.dart';
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
      home: const SettingsPage(),
      // home: const RegisterPage(),
    );
  }
}
