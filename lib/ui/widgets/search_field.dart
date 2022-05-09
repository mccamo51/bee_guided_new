import 'package:bee_guided/util/color.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search...',
        prefixIcon: const Icon(Icons.search),
        fillColor: const Color(0xffF2F2F7),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        filled: true,
        hintStyle: const TextStyle(color: lightGray),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
