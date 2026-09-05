class DummyData {
  static const String categoriesJson = '''
{
  "categories": [
    { "id": 1, "name": "Electronics", "image": "https://picsum.photos/seed/cat1/300/300" },
    { "id": 2, "name": "Groceries", "image": "https://picsum.photos/seed/cat2/300/300" },
    { "id": 3, "name": "Fashion", "image": "https://picsum.photos/seed/cat3/300/300" },
    { "id": 4, "name": "Home & Kitchen", "image": "https://picsum.photos/seed/cat4/300/300" },
    { "id": 5, "name": "Beauty", "image": "https://picsum.photos/seed/cat5/300/300" }
  ]
}
''';

  static const String productsJson = '''
{
  "products": [
    { "id": 1, "name": "Wireless Headphones", "image": "https://picsum.photos/seed/p1/400/400", "price": 30, "discount": 10, "description": "Over-ear wireless headphones with noise cancellation.", "categoryId": 1, "rating": 4.3, "noOfReviews": 128 },
    { "id": 2, "name": "Smart Watch", "image": "https://picsum.photos/seed/p2/400/400", "price": 50, "discount": 15, "description": "Fitness tracking smart watch with heart-rate monitor.", "categoryId": 1, "rating": 4.1, "noOfReviews": 87 },
    { "id": 3, "name": "Bluetooth Speaker", "image": "https://picsum.photos/seed/p3/400/400", "price": 20, "discount": 0, "description": "Portable speaker with 12-hour battery life.", "categoryId": 1, "rating": 4.5, "noOfReviews": 203 },
    { "id": 4, "name": "Organic Rice (5kg)", "image": "https://picsum.photos/seed/p4/400/400", "price": 6, "discount": 5, "description": "Premium organic basmati rice.", "categoryId": 2, "rating": 4.6, "noOfReviews": 54 },
    { "id": 5, "name": "Extra Virgin Olive Oil", "image": "https://picsum.photos/seed/p5/400/400", "price": 9, "discount": 0, "description": "Cold-pressed extra virgin olive oil, 1L.", "categoryId": 2, "rating": 4.4, "noOfReviews": 39 },
    { "id": 6, "name": "Assorted Nuts Pack", "image": "https://picsum.photos/seed/p6/400/400", "price": 7, "discount": 10, "description": "Mixed roasted nuts, 500g.", "categoryId": 2, "rating": 4.2, "noOfReviews": 61 },
    { "id": 7, "name": "Men's Denim Jacket", "image": "https://picsum.photos/seed/p7/400/400", "price": 35, "discount": 20, "description": "Classic fit denim jacket.", "categoryId": 3, "rating": 4.0, "noOfReviews": 92 },
    { "id": 8, "name": "Women's Running Shoes", "image": "https://picsum.photos/seed/p8/400/400", "price": 28, "discount": 12, "description": "Lightweight running shoes with cushioned sole.", "categoryId": 3, "rating": 4.4, "noOfReviews": 145 },
    { "id": 9, "name": "Leather Wallet", "image": "https://picsum.photos/seed/p9/400/400", "price": 10, "discount": 0, "description": "Genuine leather bifold wallet.", "categoryId": 3, "rating": 4.3, "noOfReviews": 76 },
    { "id": 10, "name": "Non-Stick Cookware Set", "image": "https://picsum.photos/seed/p10/400/400", "price": 33, "discount": 8, "description": "5-piece non-stick cookware set.", "categoryId": 4, "rating": 4.5, "noOfReviews": 110 },
    { "id": 11, "name": "LED Table Lamp", "image": "https://picsum.photos/seed/p11/400/400", "price": 13, "discount": 0, "description": "Adjustable LED desk lamp with USB charging port.", "categoryId": 4, "rating": 4.1, "noOfReviews": 48 },
    { "id": 12, "name": "Cotton Bedsheet Set", "image": "https://picsum.photos/seed/p12/400/400", "price": 16, "discount": 15, "description": "100% cotton bedsheet with 2 pillow covers.", "categoryId": 4, "rating": 4.3, "noOfReviews": 67 },
    { "id": 13, "name": "Vitamin C Serum", "image": "https://picsum.photos/seed/p13/400/400", "price": 9, "discount": 10, "description": "Brightening vitamin C face serum, 30ml.", "categoryId": 5, "rating": 4.4, "noOfReviews": 132 },
    { "id": 14, "name": "Matte Lipstick Set", "image": "https://picsum.photos/seed/p14/400/400", "price": 12, "discount": 5, "description": "Set of 4 long-lasting matte lipsticks.", "categoryId": 5, "rating": 4.2, "noOfReviews": 58 },
    { "id": 15, "name": "Herbal Shampoo", "image": "https://picsum.photos/seed/p15/400/400", "price": 5, "discount": 0, "description": "Sulfate-free herbal shampoo, 300ml.", "categoryId": 5, "rating": 4.0, "noOfReviews": 41 }
  ]
}
''';
}
