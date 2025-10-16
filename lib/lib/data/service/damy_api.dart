import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ahmetttttttdusme/lib/data/model/categories/categories.dart';

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
