import 'package:dartz/dartz.dart';
import 'package:elevate_task_flutter/Features/product%20page/data/model/product_model.dart';
import 'package:elevate_task_flutter/core/errors/failure.dart';

abstract class FetchProductRepo {

  Future<Either<Failure,List<Product>>> fetchProducts();

}