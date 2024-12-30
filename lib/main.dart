import 'package:bookley_appp/const.dart';
import 'package:bookley_appp/core/utils/api_servise.dart';
import 'package:bookley_appp/core/utils/app_router.dart';
import 'package:bookley_appp/core/utils/servise_locator.dart';
import 'package:bookley_appp/features/home/presentation/manager/cubit/Newst_cubit/newst_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/cubit/featuredBookCubit/featurs_books_cubit.dart';

void main() {
  runApp(const MyApp());
  setup();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatursBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
