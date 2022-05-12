import 'package:bee_guided/ui/widgets/setting_listtile.dart';
import 'package:bee_guided/ui/widgets/text_gradient.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "More",
          style: TextStyle(
              color: black, fontSize: 28, fontWeight: FontWeight.w700),
        ),
        backgroundColor: white,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/img/user.png"),
            ),
            title: const Text(
              "Kojo Patrick",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            trailing: CupertinoButton(
              child: Text("View Profile".toUpperCase()),
              onPressed: () {},
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Divider(thickness: 2),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
              leading: Icon(
                Icons.cake_outlined,
                color: iconColor,
              ),
              title: GrdientText(
                text: "BeeGuided Pro",
                gradient: LinearGradient(
                    colors: [Color(0xffEF709B), Color(0xffFA9372)]),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: iconColor,
              )),
        ),
         const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Divider(thickness: 2),
        ),
        const SizedBox(
          height: 20,
        ),
        const SettingsListTile(),
        const SettingsListTile(),
        const SettingsListTile(),
        const SettingsListTile(),
        const SettingsListTile(),
        const SettingsListTile(),
      ]),
    );
  }
}
