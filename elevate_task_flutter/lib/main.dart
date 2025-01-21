import 'package:elevate_task_flutter/Features/product%20page/presentation/view/products_page.dart';
import 'package:elevate_task_flutter/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      
        home: ProductPage(),
      ),
    );
  }
}






