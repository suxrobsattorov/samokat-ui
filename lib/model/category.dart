import 'package:samokat/model/Product.dart';

class CategoryOne {
  int id;
  String categoryName;
  List<CategoryTwo> categoryTwo;

  CategoryOne({
    required this.id,
    required this.categoryName,
    required this.categoryTwo,
  });
}

class CategoryTwo {
  int id;
  String categoryName;
  String image;
  List<CategoryThree> categoryThree;

  CategoryTwo({
    required this.id,
    required this.categoryName,
    required this.image,
    required this.categoryThree,
  });
}

class CategoryThree {
  int id;
  String categoryName;
  List<Product> products;

  CategoryThree({
    required this.id,
    required this.categoryName,
    required this.products,
  });
}
