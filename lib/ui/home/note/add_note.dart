import 'package:bee_guided/ui/widgets/text_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {}),
          actions: [
            TextButton(onPressed: () {}, child: Text("Save".toUpperCase()))
          ],
          elevation: 1,
          iconTheme: const IconThemeData(color: black),
          title: const Text(
            "Add Note",
            style: TextStyle(color: black, fontFamily: 'Roboto'),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              "Title",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hint: 'Enter Title',
              controller: null,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Note",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hint: 'Enter Note',
              controller: null,
            )
          ],
        ),
      ),
    );
  }
}
