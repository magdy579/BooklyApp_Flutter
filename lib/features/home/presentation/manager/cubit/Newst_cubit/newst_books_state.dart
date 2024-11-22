part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

final class NewstBooksLooding extends NewstBooksState {}

final class NewstBooksSucces extends NewstBooksState {
  final List<BookModel> books;

  const NewstBooksSucces(this.books);
}

final class NewstBooksFailure extends NewstBooksState {
  final String errMessage;

  const NewstBooksFailure(this.errMessage);
}
