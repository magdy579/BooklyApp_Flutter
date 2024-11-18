import 'package:bookley_appp/core/errors/filuare.dart';
import 'package:bookley_appp/core/utils/api-servise.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/models/book_model/pdf.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  final ApiServise apiServise;

  HomeRepoImpl({required this.apiServise});
  Future<Either<Failure, List<BookModel>>> featchNewsetBooks() async{
    try {
  var data =await apiServise.get(
    endPoint: 'volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest');
    List<BookModel>books=[];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
      return right(books)
    }
} on Exception catch (e) {
  return left(ServerFailure());
}
  }
♠
  @override
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }

}