import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/screens/orders_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      floatingActionButton: InkWell(
        onTap: () => showModalBottomSheet(
          elevation: 0,
          backgroundColor: Colors.transparent,
          barrierColor: Colors.grey,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return const OrdersScreen();
          },
        ),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: AppColors.appAddColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            children: [
              Texts.text14(
                '12000',
                Colors.white,
              ),
              Texts.text12(
                '15 minut',
                AppColors.appGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
