import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          backgroundColor: white,
          leading: BackButton(onPressed: () {}),
          actions: [TextButton(onPressed: () {}, child: Text("EDIT"))],
          elevation: 2,
          iconTheme: IconThemeData(color: black),
          title: const Text(
            "View Profile",
            style: TextStyle(color: black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            child: Image.asset('assets/img/user.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Full Name",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Kojo Patrick",
            style: TextStyle(
                color: lightGray, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Email Address",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "patrick@gmail.com",
            style: TextStyle(
                color: lightGray, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ]),
      ),
    );
  }
}
