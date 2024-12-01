import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featurs_books_state.dart';

class FeatursBooksCubit extends Cubit<FeatursBooksState> {
  FeatursBooksCubit(this.homeRepo) : super(FeatursBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    // Corrected method name
    emit(FeatursBooksLoading());
    var result = await homeRepo.featchFeaturedBooks();
    result.fold(
      (failure) => emit(FeatursBooksFailure(failure.errMessage)),
      (books) => emit(FeatursBooksSuccess(books)),
    );
  }
}
