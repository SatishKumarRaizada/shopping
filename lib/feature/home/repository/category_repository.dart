import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shopping/feature/home/model/category_model.dart';

final categoryServiceProvider = Provider<CategoryService>((ref) => CategoryService());

class CategoryService {
  Future<AsyncValue<List<CategoryModel>>> getCategories() async {
    try {
      final String response = await rootBundle.loadString('assets/sample.json');
      final data = await json.decode(response);
      return AsyncData(data);
    } catch (e) {
      return const AsyncError("Something went wrong");
    }
  }
}
