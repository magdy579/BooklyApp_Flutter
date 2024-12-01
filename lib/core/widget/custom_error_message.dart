import 'package:bookley_appp/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,
    style: Style.textStyle18,
    textAlign: TextAlign.center,));
  }
}
