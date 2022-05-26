import 'dart:developer';

import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {}),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
          elevation: 2,
          iconTheme: const IconThemeData(color: black),
          title: const Text(
            "Notifications",
            style: TextStyle(color: black, fontFamily: 'Roboto'),
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              "Push Notification",
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                  "Turning the push notification off won’t  allow app to receive any pop up notifications on update or daily reminders."),
            ),
            trailing: Switch(
                value: true,
                onChanged: (val) {
                  log(val.toString());
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              "Email Notification",
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                  "Turning the push notification off won’t  allow app to receive any pop up notifications on update or daily reminders."),
            ),
            trailing: Switch(
                value: true,
                onChanged: (val) {
                  log(val.toString());
                }),
          )
        ],
      ),
    );
  }
}
