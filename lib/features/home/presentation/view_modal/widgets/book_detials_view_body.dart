import 'package:bookley_appp/core/utils/styls.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/Ratting.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/books_action.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookDetailsAppBar.dart';
import 'package:bookley_appp/features/home/presentation/view_modal/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),

          const BookAction(),

        ],
      ),
    );
  }
}
