import 'dart:math';

import 'package:flutter/material.dart';

const white = Colors.white;
const black = Colors.black;
const primaryColor = Color(0xff3E8EF4);
const ashDeep = Color(0xff8E8E93);
const lightGray = Color.fromRGBO(209, 209, 214, 1);
const bg = Color(0xffF2F2F7);
const gradient1 = [Color(0xffF44369), Color(0xff3E3B92)];
const iconColor = Color(0xffEF5DA8);
const backgroundColor = Color(0xffF2F2F7);

final List<Color> listColors = [
  Color(0xffF44369),
  const Color(0xff3E3B92),
  Color(0xffEF5DA8),
];

Color getRandomColor() {
  int index = 0;
  var rng = Random();
  for (var i = 0; i < listColors.length; i++) {
    index = (rng.nextInt(3));
  }

  return listColors[index];
}
