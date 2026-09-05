import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flut_mart/models/product.dart';

import 'package:flut_mart/utils/constants/dummy_data.constant.dart';

class ProductApiService {
  final http.Client client;

  ProductApiService({http.Client? client}) : client = client ?? http.Client();

  Future<List<Product>> getAllProducts(String searchQuery) async {
    final Products products = productFromJson(DummyData.productsJson);
    final List<Product> allProducts = [];

    if (searchQuery != '') {
      allProducts.addAll(products.products.where((product) =>
          product.name.toLowerCase().contains(searchQuery.toLowerCase())));
    } else {
      allProducts.addAll(products.products);
    }

    return allProducts;
  }

  Future<Product> getProductById(String id) async {
    final Products products = productFromJson(DummyData.productsJson);

    return products.products
        .firstWhere((product) => product.id.toString() == id);
  }

  Future<List<Product>> getProductsByCategoryId(
      int categoryId, int page, int sort) async {
    final Products products = productFromJson(DummyData.productsJson);

    await Future.delayed(const Duration(milliseconds: 200));

    List<Product> allProducts = products
        .where((product) => product.categoryId == categoryId)
        .toList();

    if (sort == 0) {
      allProducts.sort(
          (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    } else if (sort == 1) {
      allProducts.sort(
          (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
    } else if (sort == 2) {
      allProducts
          .sort((a, b) => a.discountedPrice.compareTo(b.discountedPrice));
    } else if (sort == 3) {
      allProducts
          .sort((a, b) => b.discountedPrice.compareTo(a.discountedPrice));
    }

    return allProducts.skip((page - 1) * 20).take(20).toList();
  }

  Future<void> addToRecentlyViewed(String productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recentlyViewed = prefs.getStringList('recentlyViewed') ?? [];

    if (recentlyViewed.contains(productId)) {
      recentlyViewed.remove(productId);
    }
    if (recentlyViewed.length >= 7) {
      recentlyViewed.removeAt(0);
    }

    recentlyViewed.add(productId);
    await prefs.setStringList('recentlyViewed', recentlyViewed);
  }

  Future<List<Product>> getRecentlyViewed() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recentlyViewed = prefs.getStringList('recentlyViewed') ?? [];

    List<Product> products = [];

    for (var id in recentlyViewed) {
      final product = await getProductById(id);
      products.add(product);
    }

    return products;
  }

  Future<void> clearRecentlyViewed() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('recentlyViewed', []);
  }

  Future<void> addToSearchHistory(String searchQuery) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> searchHistory = prefs.getStringList('searchHistory') ?? [];

    if (searchHistory.contains(searchQuery)) {
      searchHistory.remove(searchQuery);
    }
    if (searchHistory.length >= 10) {
      searchHistory.removeAt(0);
    }

    searchHistory.add(searchQuery);
    await prefs.setStringList('searchHistory', searchHistory);
  }

  Future<List<String>> getSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> searchHistory = prefs.getStringList('searchHistory') ?? [];

    return searchHistory;
  }

  Future<void> removeSingleSearchHistory(String searchQuery) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> searchHistory = prefs.getStringList('searchHistory') ?? [];

    searchHistory.remove(searchQuery);
    await prefs.setStringList('searchHistory', searchHistory);
  }

  Future<void> clearSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('searchHistory', []);
  }
}
