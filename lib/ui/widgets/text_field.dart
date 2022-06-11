import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/util/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint, errorMsg;
  final TextEditingController? controller;
  final Widget? suffixIcon, preFixIXon;
  bool validate, emailValidate;
  CustomTextField(
      {Key? key,
      this.hint,
      this.errorMsg,
      this.controller,
      this.suffixIcon,
      this.validate = false,
      this.emailValidate = false,
      this.preFixIXon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        RegExp regex = new RegExp(pattern);
        if (value!.isEmpty && validate) {
          return errorMsg;
        } else if (emailValidate && !regex.hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: (preFixIXon),
          suffixIcon: (suffixIcon),
          hintStyle: const TextStyle(color: lightGray),
          contentPadding: const EdgeInsets.symmetric(horizontal: 7),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: lightGray, width: 0.8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: lightGray, width: 0.8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: lightGray, width: 0.8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0.6,
              color: Colors.red,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red, width: .6),
          )),
    );
  }
}
