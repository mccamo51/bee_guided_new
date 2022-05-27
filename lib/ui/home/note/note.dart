import 'package:bee_guided/ui/widgets/note_card.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class NotePage extends StatelessWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          }),
          actions: [
            TextButton(onPressed: () {}, child: Text("Add notes".toUpperCase()))
          ],
          elevation: 1,
          iconTheme: const IconThemeData(color: black),
          title: const Text(
            "Note",
            style: TextStyle(color: black, fontFamily: 'Roboto'),
          )),
      body: Column(children: const [
        NoteCard(
          title: 'Finding Purpose',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
        ),
        NoteCard(
          title: 'Character Focus',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
        ),
        NoteCard(
          title: 'Finding Purpose',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
        )
      ]),
    );
  }
}
