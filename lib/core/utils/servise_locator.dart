import 'package:bookley_appp/core/utils/api_servise.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiServise>(),
    ),
  );
}
