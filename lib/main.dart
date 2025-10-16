import 'package:ahmetttttttdusme/lib/data/bloc/products_bloc.dart';
import 'package:ahmetttttttdusme/lib/data/service/damy_api.dart';
import 'package:ahmetttttttdusme/lib/ui/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ProductsBloc(DamyApiService()),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
