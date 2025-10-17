import 'package:ahmetttttttdusme/101/product/model/subcategory.dart';
import 'package:ahmetttttttdusme/101/product/state/cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      appBar: AppBar(
        title: const Text('Kategoriler'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductsCubit101, ProductsState>(
        builder: (context, state) {
          if (state is ProductsLoading || state is ProductsInitial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is ProductsError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<ProductsCubit101>().fetchAllProducts(),
                    child: const Text('Tekrar Dene'),
                  ),
                ],
              ),
            );
          }

          if (state is ProductsLoaded) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategoriler Başlığı
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

                  // Kategori Butonları
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      children: [
                        // "Tüm Kategoriler" butonu
                        _CategoryButton(
                          label: 'Tüm Kategoriler',
                          isSelected: state.subcategories.length ==
                              state.categories.expand((c) => c.subcategories).length,
                          onPressed: () {
                            context.read<ProductsCubit101>().selectCategory(null);
                          },
                        ),
                        
                        // Kategori butonları
                        ...state.categories.map(
                          (category) => _CategoryButton(
                            label: category.name,
                            isSelected: state.subcategories.length == category.subcategories.length &&
                                state.subcategories.isNotEmpty &&
                                category.subcategories.isNotEmpty &&
                                state.subcategories.first == category.subcategories.first,
                            onPressed: () {
                              context.read<ProductsCubit101>().selectCategory(category);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Alt Kategoriler Başlığı
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Text(
                      'Alt Kategoriler (${state.subcategories.length}):',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // Alt Kategori Grid
                  Expanded(
                    child: state.subcategories.isEmpty
                        ? const Center(
                            child: Text(
                              'Alt kategori bulunamadı',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          )
                        : GridView.builder(
                            padding: const EdgeInsets.all(8),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
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
                  ),
                ],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

// Kategori Butonu Widget
class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
          foregroundColor: isSelected ? Colors.white : Colors.black87,
          elevation: isSelected ? 4 : 1,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
        child: Text(label),
      ),
    );
  }
}

// Alt Kategori Card Widget
class _SubcategoryCard extends StatelessWidget {
  const _SubcategoryCard({required this.subcategory});

  final SubcategoryModel subcategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Alt kategoriye tıklanınca yapılacak işlem
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${subcategory.name} seçildi'),
            duration: const Duration(milliseconds: 800),
          ),
        );
      },
      borderRadius: BorderRadius.circular(12),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subcategory.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}