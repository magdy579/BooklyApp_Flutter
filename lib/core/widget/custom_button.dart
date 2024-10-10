import 'package:bookley_appp/core/utils/styls.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
       this.borderRadius, required this.text,  this.fontSize,});
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double? fontSize;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              ),
              backgroundColor: backgroundColor),
          child: Text(
            text,
            style: Style.textStyle16.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize
            ),
          )),
    );
  }
}
