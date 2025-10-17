import 'dart:convert';
import '../model/categories/categories.dart';
import 'package:flutter/services.dart';

class DamyApiService {
  Future<List<Categories>> fetchDummyCategories() async {
    try {
      final String response = await rootBundle.loadString(
        'assets/dummy_api.json',
      );
      final List<dynamic> data = jsonDecode(response);
      final categories = data
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList();

      await Future.delayed(Duration(seconds: 2));
      return categories;
    } catch (e) {
      throw Exception('Dummy kategoriler yüklenemedi: $e');
    }
  }
}
