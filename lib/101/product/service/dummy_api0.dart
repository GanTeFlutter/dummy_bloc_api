import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:ahmetttttttdusme/101/product/model/category.dart';
import 'package:flutter/services.dart';

class DamyApiService2 {
  static const String _jsonPath = 'assets/dummy_api0.json';

  Future<List<CategoryModel>> fetchDummyCategories() async {
    debugPrint('🔄 [DamyApiService2] fetchDummyCategories başladı');

    try {
      final String response = await rootBundle.loadString(_jsonPath);
      debugPrint(
        '✅ [DamyApiService2] JSON yüklendi (${response.length} karakter)',
      );

      final dynamic decoded = jsonDecode(response);

      if (decoded is! List) {
        throw Exception(
          'JSON bir liste değil. Beklenen: List, Gelen: ${decoded.runtimeType}',
        );
      }

      final categories = (decoded).map((json) {
        try {
          return CategoryModel.fromJson(json as Map<String, dynamic>);
        } catch (e) {
          debugPrint('⚠️ [DamyApiService2] Kategori parse edilemedi: $json');
          rethrow;
        }
      }).toList();

      debugPrint('✅ [DamyApiService2] ${categories.length} kategori yüklendi');

      for (final category in categories) {
        debugPrint(
          '   📁 ${category.name}: ${category.subcategories.length} alt kategori',
        );
      }

      return categories;
    } on FlutterError {
      debugPrint('❌ [DamyApiService2] Asset bulunamadı: $_jsonPath');
      debugPrint('💡 pubspec.yaml dosyasını kontrol edin!');
      throw Exception('JSON dosyası bulunamadı: $_jsonPath');
    } on FormatException catch (e) {
      debugPrint('❌ [DamyApiService2] JSON format hatası: $e');
      throw Exception('Geçersiz JSON formatı: $e');
    } catch (e, stackTrace) {
      debugPrint('❌ [DamyApiService2] Beklenmeyen hata: $e');
      if (kDebugMode) {
        debugPrint('📋 Stack Trace:\n$stackTrace');
      }
      rethrow;
    }
  }

  Future<CategoryModel?> fetchCategoryById(int id) async {
    try {
      final categories = await fetchDummyCategories();
      return categories.firstWhere(
        (cat) => cat.id == id,
        orElse: () => throw Exception('Kategori bulunamadı: $id'),
      );
    } catch (e) {
      debugPrint('❌ [DamyApiService2] Kategori yüklenemedi (id: $id): $e');
      return null;
    }
  }
}
