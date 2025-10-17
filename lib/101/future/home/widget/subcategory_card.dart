part of '../home_view.dart';

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