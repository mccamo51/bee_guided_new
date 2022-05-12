import 'package:bee_guided/ui/widgets/setting_listtile.dart';
import 'package:bee_guided/ui/widgets/text_gradient.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {}),
          elevation: 1,
          iconTheme: const IconThemeData(color: black),
          title: const Text(
            "Settings",
            style: TextStyle(color: black, fontFamily: 'Roboto'),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(children: const [
          SizedBox(
            height: 15,
          ),
          SettingsListTile(),
          SettingsListTile(),
          SettingsListTile(),
          SettingsListTile(),
          SettingsListTile(),
          SettingsListTile(),
        ]),
      ),
    );
  }
}
