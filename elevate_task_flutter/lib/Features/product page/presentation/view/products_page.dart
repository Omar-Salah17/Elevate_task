
import 'package:elevate_task_flutter/Features/product%20page/presentation/view%20model/fetch_products_cubit.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view%20model/fetch_products_state.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view/widgets/product_grid.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => GetIt.I<ProductsCubit>()..fetchProducts(),
        child: BlocBuilder<ProductsCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductFailure) {
              return Center(child: Text(state.message));
            } else if (state is ProductLoaded) {
              return ProductGrid(products: state.products);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
