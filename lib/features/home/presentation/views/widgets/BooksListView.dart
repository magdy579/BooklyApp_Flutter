// import 'package:bookley_appp/core/errors/filuare.dart';
import 'package:bookley_appp/core/widget/custom_error_message.dart';
import 'package:bookley_appp/features/home/presentation/manager/cubit/featuredBookCubit/featurs_books_cubit.dart';
// import 'package:bookley_appp/features/home/presentation/views/widgets/Best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_circler_indictor.dart';
import 'customBookImage.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatursBooksCubit, FeatursBooksState>(
      builder: (context, state) {
        if (state is FeatursBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else if (state is FeatursBooksFailure) {
          return CustomErrorMessage(
            errMessage: state.errorMessage,
          );
        } else {
          return const CustomCirclerIndictor();
        }
      },
    );
  }
}
