import 'package:ahmetttttttdusme/101/product/model/subcategory.dart';
import 'package:ahmetttttttdusme/101/product/state/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widget/category_button.dart';
part 'widget/subcategory_card.dart';

class HomeView0 extends StatefulWidget {
  const HomeView0({super.key});

  @override
  State<HomeView0> createState() => _HomeView0State();
}

class _HomeView0State extends State<HomeView0> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit101>().fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ürünler'), centerTitle: true),
      body: BlocBuilder<ProductsCubit101, ProductsState>(
        builder: (context, state) {
          if (state is ProductsLoading || state is ProductsInitial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is ProductsError) {
            return Center(
              child: Text(
                'Hata oluştu: ${state.message}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          if (state is ProductsLoaded) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Text(
                      'Kategoriler:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      children: [
                        _CategoryButton(
                          label: 'Tüm Kategoriler',
                          isSelected: state.selectedCategory == null,
                          onPressed: () {
                            // null kontrolü bloc içerisinde yapılıyor
                            context.read<ProductsCubit101>().selectCategory(
                              null,
                            );
                          },
                        ),

                        ...state.categories.map(
                          (category) => _CategoryButton(
                            label: category.name,
                            isSelected: state.selectedCategory == category,
                            onPressed: () {
                              context.read<ProductsCubit101>().selectCategory(
                                category,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Text(
                      'Alt Kategoriler (${state.subcategories.length}):',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  altCategory(state),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Expanded altCategory(ProductsLoaded state) {
    return Expanded(
      child: state.subcategories.isEmpty
          ? const Center(
              child: Text(
                'Alt kategori bulunamadı',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 3 / 2,
              ),
              itemCount: state.subcategories.length,
              itemBuilder: (_, index) {
                final subcategory = state.subcategories[index];
                return _SubcategoryCard(subcategory: subcategory);
              },
            ),
    );
  }
}
