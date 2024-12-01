import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/book_model/book_model.dart';
import '../../../../data/repos/home_repo.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewstBooks() async {
    emit(NewstBooksLooding());
    var result = await homeRepo.featchNewsetBooks();
    result.fold((faailure) {
      print('Error: ${faailure.errMessage}');
      emit(NewstBooksFailure(faailure.errMessage));
    }, (books) {
      print('Fetched books: $books');
      emit(NewstBooksSucces(books));
    });
  }
}
