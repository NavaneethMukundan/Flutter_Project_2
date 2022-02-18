import 'package:flutter_project_2/models/category/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const CATEGORY_DB_NAME = 'category-database';

abstract class CategoryDbFunctions{
   Future<List<CategoryModel>> getCategoies();
  Future<void> insertCategory({ required CategoryModel categoryModel});
}

class CategoryDB implements CategoryDbFunctions{
  @override
  Future<void> insertCategory({ required CategoryModel categoryModel}) async {
  final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
  await _categoryDB.add(categoryModel);
  }

  @override
  Future<List<CategoryModel>> getCategoies() async {
   final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
  return _categoryDB.values.toList();
  }
  
}