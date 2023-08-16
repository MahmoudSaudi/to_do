import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.borderRadius,
    this.width,
    this.height,
    this.color,
    this.margin,
    this.padding,
    this.textStyle,
  });

  final VoidCallback onPressed;
  final String text;
  double? height;
  double? width;
  double? borderRadius;
  int? color;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        color: Color(color!),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
