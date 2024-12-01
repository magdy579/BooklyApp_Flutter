part of 'featurs_books_cubit.dart';

abstract class FeatursBooksState extends Equatable {
  const FeatursBooksState();

  @override
  List<Object> get props => [];
}

class FeatursBooksInitial extends FeatursBooksState {}

class FeatursBooksLoading extends FeatursBooksState {}

class FeatursBooksFailure extends FeatursBooksState {
  final String errorMessage;

  const FeatursBooksFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class FeatursBooksSuccess extends FeatursBooksState {
  final List<BookModel> books;

  const FeatursBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}
