import 'package:bloc/bloc.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featurs_books_state.dart';

class FeatursBooksCubit extends Cubit<FeatursBooksState> {
  FeatursBooksCubit(this.homeRepo) : super(FeatursBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchFeaturedBooks() async {
    emit(FeatursBooksLoading());
    var result = await homeRepo.featchFeaturedBooks();
    result.fold((faailure) => emit(FeatursBooksFailure(faailure.errMessage)),
        (books) => emit(FeatursBooksSucees(books)));
  }
}
