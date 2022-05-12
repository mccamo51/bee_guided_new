import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const ListTile(
            leading: Icon(
              Icons.favorite,
              color: iconColor,
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: iconColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )),
      ),
    );
  }
}
