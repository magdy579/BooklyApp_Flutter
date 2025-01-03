import 'package:bookley_appp/core/utils/servise_locator.dart';
import 'package:bookley_appp/features/home/data/models/book_model/book_model.dart';
import 'package:bookley_appp/features/home/data/repos/home_repo_impl.dart';
import 'package:bookley_appp/features/home/presentation/manager/cubit/similarBooksCubit/similar_books_cubit.dart';
import 'package:bookley_appp/features/home/presentation/views/book_delials_view.dart';
import 'package:bookley_appp/features/home/presentation/views/homeView.dart';
import 'package:bookley_appp/features/splash/presentation/view/splashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/view/serachView.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const KSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
