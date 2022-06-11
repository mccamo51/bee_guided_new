import 'package:bee_guided/ui/widgets/text_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNote extends StatelessWidget {
  AddNote({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final noteContrller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          }),
          actions: [
            TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context
                        .read<NoteProvider>()
                        .addNewNote(titleController.text, noteContrller.text)
                        .then((value) {
                      if (value) {
                        // print("sazjhafnkjbg$value");
                        Navigator.pop(context);
                      }
                    });
                  }
                },
                child: Text("Save".toUpperCase()))
          ],
          elevation: 1,
          iconTheme: const IconThemeData(color: black),
          title: const Text(
            "Add Note",
            style: TextStyle(color: black, fontFamily: 'Roboto'),
          )),
      body: context.watch<NoteProvider>().isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Title",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextField(
                      hint: 'Enter Title',
                      controller: titleController,
                      validate: true,
                      errorMsg: 'Title required',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Note",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextField(
                      hint: 'Enter Note',
                      controller: noteContrller,
                      validate: true,
                      errorMsg: 'Note required',
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
