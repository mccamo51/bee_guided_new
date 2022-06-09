import 'package:bee_guided/ui/widgets/home_widget.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/user_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: black),
        ),
        elevation: 0,
        backgroundColor: white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Good Evening,",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
                 SizedBox(
                  height: 10,
                ),
                Text(
                  "Prepare your heart to meet with God.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const HomeCard(),
          const SizedBox(
            height: 20,
          ),
          const MyNoteCard()
        ],
      ),
    );
  }
}
