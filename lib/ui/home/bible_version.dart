import 'package:bee_guided/ui/widgets/bible_version_tile.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class BibleVersions extends StatelessWidget {
  const BibleVersions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: const Text(
            "Version",
            style: TextStyle(
              color: black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: BackButton(onPressed: () {}),
          backgroundColor: white,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          iconTheme: const IconThemeData(color: black),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Currently Used".toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff666666),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BibleVersionTile(),
                  BibleVersionTile(),
                  BibleVersionTile(),
                  BibleVersionTile(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Download more".toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff666666),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BibleVersionTile(isDownload: true),
                  BibleVersionTile(isDownload: true,),
                ],
              ),
            )
          ],
        ));
  }
}
