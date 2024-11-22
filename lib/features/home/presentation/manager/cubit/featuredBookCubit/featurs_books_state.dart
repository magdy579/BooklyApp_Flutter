part of 'featurs_books_cubit.dart';

sealed class FeatursBooksState extends Equatable {
  const FeatursBooksState();

  @override
  List<Object> get props => [];
}

final class FeatursBooksInitial extends FeatursBooksState {}

final class FeatursBooksLoading extends FeatursBooksState {}

final class FeatursBooksFailure extends FeatursBooksState {
  final String errMessage;

  const FeatursBooksFailure(this.errMessage);
}

final class FeatursBooksSucees extends FeatursBooksState {
  final List<BookModel> books;

  const FeatursBooksSucees(this.books);
}
