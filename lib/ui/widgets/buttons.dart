import 'package:bee_guided/util/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AuthButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(fontFamily: 'Lora'),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(Icons.arrow_forward)
            ],
          ),
          onPressed: onTap),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const TextButtonWidget({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style:const TextStyle(
              fontFamily: 'Lora',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: black),
        ));
  }
}
