import 'package:bookley_appp/core/errors/filuare.dart';
import 'package:bookley_appp/core/utils/api_servise.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServise apiServise;

  HomeRepoImpl(this.apiServise);
  @override
  Future<Either<Failure, List<BookModel>>> featchNewsetBooks() async {
    try {
      var data = await apiServise.get(
          endPoint:
              'volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      // left(ServerFailure(e.toString()));
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks() async {
    try {
      var data = await apiServise.get(
          endPoint: 'volumes?q=computer science&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiServise.get(
          endPoint: 'volumes?q=computer science&Filtering=free-ebooks&Sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
