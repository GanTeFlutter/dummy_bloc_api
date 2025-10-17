import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:ahmetttttttdusme/101/product/model/category.dart';
import 'package:flutter/services.dart';

class DamyApiService2 {
  Future<List<CategoryModel>> fetchDummyCategories() async {
    debugPrint('--DamyApiService2: fetchDummyCategories çağrıldı--');
    try {
      final String response = await rootBundle.loadString(
        'assets/dummy_api0.json',
      );
      debugPrint('--- JSON yüklendi: $response');
      final List<dynamic> data = jsonDecode(response);
      final categories = data
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList();

      debugPrint(
        '--[DumyApiService2] Kategoriler yüklendi: ${categories.length}',
      );
      return categories;
    } catch (e, stack) {
      debugPrint('❌ Dummy kategoriler yüklenemedi: $e');
      debugPrint('STACK:\n$stack');
      throw Exception('Dummy kategoriler yüklenemedi: $e');
    }
  }
}
