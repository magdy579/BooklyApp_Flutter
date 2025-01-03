import 'package:bloc/bloc.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo.dart';
import 'package:bookley_appp/features/home/presentation/views/homeView.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category }) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((faailure) {
      print('Error: ${faailure.errMessage}');
      emit(SimilarBooksFailure(faailure.errMessage));
    }, (books) {
      print('Fetched books: $books');
      emit(SimilarBooksSuccess(books));
    });
  }
}
