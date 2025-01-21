import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elevate_task_flutter/Features/product%20page/data/model/product_model.dart';
import 'package:elevate_task_flutter/Features/product%20page/data/repo/fetch_product_repo.dart';
import 'package:elevate_task_flutter/core/errors/failure.dart';
import 'package:elevate_task_flutter/core/network/api_service.dart';

class FetchProductRepoImp extends FetchProductRepo {
  final ApiService apiService;
  final Dio dio; // Ensure Dio is initialized properly
  
  FetchProductRepoImp({required this.apiService, required this.dio});

  @override
  Future<Either<Failure, List<Product>>> fetchProducts() async {
    try {
  
      var response = await dio.get(
        'https://fakestoreapi.com/products',
      );
      

    
      if (response.data is List) {
  
        List<Product> products = (response.data as List)
            .map((item) => Product.fromJson(item))
            .toList();
        print(products[0].image);
        return right(products);
      } else {
        return left(ServerFailure('Unexpected response format'));
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
