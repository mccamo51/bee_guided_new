import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final Widget? suffixIcon, preFixIXon;
  const CustomTextField(
      {Key? key, this.hint, this.controller, this.suffixIcon, this.preFixIXon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon:(preFixIXon),
          suffixIcon: (suffixIcon),
          hintStyle:const TextStyle(color: lightGray),
          contentPadding: const EdgeInsets.symmetric(horizontal:7),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: lightGray, width: 0.8))),
    );
  }
}
