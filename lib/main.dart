import 'package:flutter/material.dart';
import 'package:samokat/presentation/screens/add_address_screen.dart';
import 'package:samokat/presentation/screens/category_screen.dart';
import 'package:samokat/presentation/screens/home_screen.dart';
import 'package:samokat/presentation/screens/menu_screen.dart';
import 'package:samokat/presentation/screens/product_details_screen.dart';
import 'package:samokat/presentation/screens/search_screen.dart';
import 'package:samokat/presentation/screens/story_screen.dart';

import 'presentation/constants/app_colors.dart';
import 'presentation/screens/main_screen.dart';
import 'presentation/screens/recommendation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samokat',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
        splashColor: AppColors.appAddColor,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MainScreen(),
      // home: const StoryScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        CategoryScreen.routeName: (context) => const CategoryScreen(),
        ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(),
        AddAddressScreen.routeName: (context) => const AddAddressScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        MenuScreen.routeName: (context) => const MenuScreen(),
        RecommendationScreen.routeName: (context) => const RecommendationScreen(),
      },
    );
  }
}
