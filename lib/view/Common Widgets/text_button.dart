import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final TextStyle style;

  const AppTextButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed,
      required this.height,
      required this.width, required this.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: width * 0.87,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
          child: Text(text, style: style),
        ),
      ),
    );
  }
}
