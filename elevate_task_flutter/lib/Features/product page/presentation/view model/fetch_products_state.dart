import 'package:elevate_task_flutter/Features/product%20page/data/model/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  const ProductLoaded( this.products);
}

class ProductFailure extends ProductState {
  final String message;

   const ProductFailure( this.message);
}