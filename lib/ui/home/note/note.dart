import 'package:bee_guided/ui/home/note/add_note.dart';
import 'package:bee_guided/ui/widgets/note_card.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  void initState() {
    super.initState();
    // context.read<NoteProvider>().getnotes();
  }

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
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddNote()));
                  },
                  child: Text("Add notes".toUpperCase()))
            ],
            elevation: 1,
            iconTheme: const IconThemeData(color: black),
            title: const Text(
              "Note",
              style: TextStyle(color: black, fontFamily: 'Roboto'),
            )),
        body: context.watch<NoteProvider>().isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                children: List.generate(
                    context.watch<NoteProvider>().noteModel.data!.length,
                    (index) {
                  var data = context.watch<NoteProvider>().noteModel.data!;
                  return NoteCard(
                    title: data[index].title,
                    description: data[index].note,
                  );
                })));
  }
}

// Column(children: const [
//         NoteCard(
//           title: 'Finding Purpose',
//           description:
//               'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
//         ),
//         NoteCard(
//           title: 'Character Focus',
//           description:
//               'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ',
//         ),
      //  
//       ]),