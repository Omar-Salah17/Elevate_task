import 'package:elevate_task_flutter/Features/product%20page/data/repo/fetch_product_repo_imp.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view%20model/fetch_products_cubit.dart';
import 'package:elevate_task_flutter/core/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  // Here i want to create a single instance of the dio and every thing the cubit need it  so i make the dio singltion 
  getIt.registerSingleton(Dio());

  // then the api service 
  getIt.registerSingleton(ApiService());

  // then the repo implementaton that the cubit use it 
  getIt.registerSingleton(FetchProductRepoImp(
    apiService: getIt<ApiService>(),
    dio: getIt<Dio>(),
  ));

  // then i created a factory of this cubit  
  getIt.registerFactory(() => ProductsCubit(getIt<FetchProductRepoImp>()));

  // used singlton with dio api service and repo to create 1  instance of them among the app 
  // but using factory to to create a  new instance of the registered type every time it is requested
  // there is another type called  LazySingleton , the instance in this type only created with its needed other things like singlton 
}
