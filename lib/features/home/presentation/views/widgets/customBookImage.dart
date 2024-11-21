import 'package:bookley_appp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.testBook),
            fit: BoxFit.fill,
          ),
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
