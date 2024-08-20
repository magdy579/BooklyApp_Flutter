import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
      CustomBookDetailsAppBar(),
      ],
      ),
    );
  }
}

