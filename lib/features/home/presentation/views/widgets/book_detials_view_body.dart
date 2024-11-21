import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/views/widgets/BookDetailsSection.dart';
import 'package:bookley_appp/features/home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:bookley_appp/features/home/presentation/views/widgets/customBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rudyard Kipling',
                    style: Style.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
