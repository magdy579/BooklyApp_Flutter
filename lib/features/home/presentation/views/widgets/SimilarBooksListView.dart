import 'package:bookley_appp/core/widget/custom_circler_indictor.dart';
import 'package:bookley_appp/core/widget/custom_error_message.dart';
import 'package:bookley_appp/features/home/presentation/manager/cubit/similarBooksCubit/similar_books_cubit.dart';
import 'package:bookley_appp/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .15,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: CustomBookImage(
                    imageUrl:
                    'https://img.freepik.com/free-photo/open-flying-old-books_1232-2096.jpg?t=st=1733008622~exp=1733012222~hmac=e72522e9f32bbcec6f8c198a6bc583d113dd70865db11fea7e3810b0bd1a84e6&w=740',
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorMessage(errMessage: state.errMessage);
        }else{
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
