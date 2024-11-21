import 'package:bloc/bloc.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featurs_books_state.dart';

class FeatursBooksCubit extends Cubit<FeatursBooksState> {
  FeatursBooksCubit() : super(FeatursBooksInitial());
}
