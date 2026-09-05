import 'package:http/http.dart' as http;

import 'package:flut_mart/utils/constants/dummy_data.constant.dart';
import 'package:flut_mart/models/category.dart';

class CategoryApiService {
  final http.Client client;

  CategoryApiService({http.Client? client}) : client = client ?? http.Client();

  Future<List<Category>> getCategories() async {
    final ProductCategory categories =
        productCategoryFromJson(DummyData.categoriesJson);

    return categories.categories;
  }

  Future<Category> getCategoryById(int id) async {
    final ProductCategory categories =
        productCategoryFromJson(DummyData.categoriesJson);

    return categories.categories.firstWhere((category) => category.id == id);
  }
}
