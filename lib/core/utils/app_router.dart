import 'package:bookley_appp/features/home/presentation/views/book_delials_view.dart';
import 'package:bookley_appp/features/home/presentation/views/homeView.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/view/splashView.dart';

abstract class AppRouter{
  static const kHomeView='/homeView';
  static const kBookDetailsView='/bookDetailsView';
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
    ],
  );
}