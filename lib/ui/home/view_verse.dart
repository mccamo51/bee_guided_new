import 'package:bee_guided/ui/widgets/search_field.dart';
import 'package:bee_guided/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewVerse extends StatelessWidget {
  const ViewVerse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                      const Expanded(
                        flex: 2,
                        child: SearchTextField(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  Row(
                    children: const [
                      Chip(
                        label: Text('English/NIV'),
                        side: BorderSide(width: 0.7, color: lightGray),
                        backgroundColor: white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Chip(
                        label: Text('OT/NT'),
                        side: BorderSide(width: 0.7, color: lightGray),
                        backgroundColor: white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "16 For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.17 For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.",
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("Read full Chapter"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(black),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                                  EdgeInsets.all(10)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(white),
                          elevation: MaterialStateProperty.resolveWith<double>(
                            (states) => 0,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                          color: lightGray, width: 0.5)))))
                ],
              ),
            )
          ],
        ));
  }
}
