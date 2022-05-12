import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class BibleVersionTile extends StatelessWidget {
  bool isDownload;
  BibleVersionTile({Key? key, this.isDownload = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(bottom: 10),
        title: const Text(
          "NIV",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w600,
            fontSize: 19,
          ),
        ),
        subtitle: const Text("New International Version"),
        trailing: isDownload
            ? TextButton(onPressed: () {}, child: Text("DOWNLOAD"))
            : Switch(value: false, onChanged: (val) {}));
  }
}
