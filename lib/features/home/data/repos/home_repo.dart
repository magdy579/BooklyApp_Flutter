import 'package:bookley_appp/core/errors/filuare.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks();
}
