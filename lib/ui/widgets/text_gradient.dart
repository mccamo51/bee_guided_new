import 'package:flutter/material.dart';

class GrdientText extends StatelessWidget {


  final String text;
  final TextStyle? style;
  final Gradient gradient;

  const GrdientText({ Key? key,required this.text, this.style,required this.gradient }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}