
import 'package:bloc/bloc.dart';
import 'package:elevate_task_flutter/Features/product%20page/data/repo/fetch_product_repo_imp.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view%20model/fetch_products_state.dart';

class ProductsCubit extends Cubit<ProductState> {
  final FetchProductRepoImp  repo ;
  ProductsCubit(this.repo) : super(ProductInitial()); 

  Future<void> fetchProducts() async 
  {
    emit(ProductLoading());

    var result = await repo.fetchProducts();

    result.fold((failure)=>emit(ProductFailure(failure.errorMessage)), (products)=> emit(ProductLoaded(products)));

  }

}