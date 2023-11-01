import 'package:samokat/model/category.dart';
import 'package:samokat/model/discount.dart';
import 'package:samokat/model/menu.dart';
import 'package:samokat/model/recommendation.dart';
import 'package:samokat/model/recommendation.dart';

import '../model/Product.dart';

class Options {
  static CategoryThree categoryThree = CategoryThree(
    id: 1,
    categoryName: 'Name 1',
    products: products,
  );

  static List<CategoryThree> categoryThrees = [
    categoryThree,
    categoryThree,
    categoryThree,
  ];

  static CategoryTwo categoryTwo = CategoryTwo(
    id: 1,
    categoryName: 'Name 1',
    image:
        'https://cm.samokat.ru/processed/category/fe6ac872-3e2b-4cc1-8ee2-20fede60a45b.jpg',
    categoryThree: categoryThrees,
  );

  static List<CategoryTwo> categoryTwos = [
    categoryTwo,
    categoryTwo,
    categoryTwo,
    categoryTwo,
    categoryTwo,
  ];

  static CategoryOne categoryOne = CategoryOne(
    id: 1,
    categoryName: 'Category name',
    categoryTwo: categoryTwos,
  );

  static List<CategoryOne> categoryOnes = [
    categoryOne,
    categoryOne,
    categoryOne,
    categoryOne,
    categoryOne,
  ];

  static Discount discount = Discount(
    title: 'Aksiya',
    image:
        'https://cm.samokat.ru/processed/category/78b1833c-4353-463c-9a58-43bb6ce42ad4.jpg',
  );

  static List<Discount> discounts = [
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
    discount,
  ];

  static Product product = Product(
    image: 'https://cm.samokat.ru/processed/l/original/60879_1111576615.jpg',
    discount: 35,
    productName: 'Колбаса варёная Вязанка Докторская ГОСТ, категория А ',
    size: '400 г',
    price: 18000,
    discountPrice: 12000,
  );

  static List<Product> products = [
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
    product,
  ];

  static List<Product> products2 = [
    product,
    product,
    product,
  ];

  static Menu menu1 = Menu(
    id: 1.toString(),
    name: 'Name1',
    titleImage:
        'https://cm.samokat.ru/processed/l/original/170751426_855820264.jpg',
    bacImage:
        'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg',
  );

  static Menu menu2 = Menu(
    id: 2.toString(),
    name: 'Name2',
    titleImage:
        'https://cm.samokat.ru/processed/l/original/189847010_873355422.jpg',
    bacImage:
        'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg',
  );

  static List<Menu> menuList = [
    menu1,
    menu2,
    menu1,
    menu2,
    menu1,
    menu2,
    menu1,
    menu2,
    menu1,
  ];

  static Recommendation recommendation = Recommendation(
    id: 2.toString(),
    name: 'Name2',
    description:
        "Мука: пшеничная первого сорта, ржаная обдирная; вода питьевая, дрожжи прессованные, соль, патока крахмальная, солодовый экстракт, дрожжи прессованные, кориандр, масло растительное, глюкоза, усилители вкуса и аромата: глутамат натрия 1-замещенный, 5'-гуанилат натрия 2-замещенный, 5'-инозинат натрия 2-замещенный; креветки порошок, жир растительный, натуральные",
    titleImage:
        'https://cm.samokat.ru/processed/l/original/189847010_873355422.jpg',
    bacImage:
        'https://88227.selcdn.ru/cm-catalog-api-prod/public/08cea2784c7a8199________.jpg',
  );
}
