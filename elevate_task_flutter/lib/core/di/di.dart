import 'package:elevate_task_flutter/Features/product%20page/data/repo/fetch_product_repo_imp.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view%20model/fetch_products_cubit.dart';
import 'package:elevate_task_flutter/core/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  // Register Dio instance
  getIt.registerSingleton(Dio());

  // Register ApiService
  getIt.registerSingleton(ApiService());

  // Register FetchProductRepoImp
  getIt.registerSingleton(FetchProductRepoImp(
    apiService: getIt<ApiService>(),
    dio: getIt<Dio>(),
  ));

  // Register ProductsCubit
  getIt.registerFactory(() => ProductsCubit(getIt<FetchProductRepoImp>()));
}
