import 'package:ahmetttttttdusme/lib/data/bloc/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<ProductsBloc>().add(const ProductsEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView')),
      body: ListView(
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<ProductsBloc>().add(
                    const ProductsEvent.getAllProducts(),
                  );
                },
                child: const Text('Tüm Kategoriler'),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Elektronik')),
            ],
          ),

          BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (products, subcategories) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final category = products[index];
                      return ExpansionTile(
                        title: Text(category.name),
                        children: category.subcategories
                            .map((sub) => ListTile(title: Text(sub.name)))
                            .toList(),
                      );
                    },
                  );
                },
                selectedCategories: (categories) {
                  return ListView.builder(
                      shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return ListTile(title: Text(category.name));
                    },
                  );
                },
                error: (message) => Center(child: Text('Hata: $message')),
              );
            },
          ),
        ],
      ),
    );
  }
}
