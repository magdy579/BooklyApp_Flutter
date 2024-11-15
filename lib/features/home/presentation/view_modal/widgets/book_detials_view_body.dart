import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/BookDetailsSection.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/Ratting.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/SimilarBooksListView.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/books_action.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookDetailsAppBar.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookImage.dart';
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
                BookDetailsSection(),
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


