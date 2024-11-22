import 'package:bookley_appp/features/home/presentation/views/book_delials_view.dart';
import 'package:bookley_appp/features/home/presentation/views/homeView.dart';
import 'package:bookley_appp/features/splash/presentation/view/splashView.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
