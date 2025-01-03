import 'package:bookley_appp/core/widget/custom_circler_indictor.dart';
import 'package:bookley_appp/core/widget/custom_error_message.dart';
import 'package:bookley_appp/features/home/presentation/manager/cubit/Newst_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Best_seller.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSucces) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewstBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
