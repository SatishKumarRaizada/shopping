import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shopping/feature/home/model/category_model.dart';

final categoryProvider = FutureProvider<List<CategoryModel>>((ref) async {
  final String response = await rootBundle.loadString('assets/data/category_data.json');
  final data = await json.decode(response);
  final posts = List<CategoryModel>.from(data.map((model) => CategoryModel.fromJson(model)));
  return posts;
});
