import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String icon;
  const SettingsListTile({Key? key, required this.title, required this.onTap,required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
            onTap: onTap,
            leading:  SvgPicture.asset('assets/icon/$icon.svg'),
            title: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: iconColor),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )),
      ),
    );
  }
}
