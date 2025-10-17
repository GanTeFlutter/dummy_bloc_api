import 'package:ahmetttttttdusme/101/future/home/home_view.dart';
import 'package:ahmetttttttdusme/101/product/service/dummy_api0.dart';
import 'package:ahmetttttttdusme/101/product/state/cubit/products_cubit.dart';

// import 'package:ahmetttttttdusme/202/product/state/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ProductsCubit101>(
          create: (context) => ProductsCubit101(DamyApiService2()),
        ),
        // 202
        // BlocProvider<ProductsBloc>(
        //   create: (context) => ProductsBloc(DamyApiService()),
        // ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeView0());
  }
}
