import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/widgets/add_address/input_address.dart';
import 'package:samokat/presentation/widgets/my_back_button.dart';

import '../constants/Texts.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  static const routeName = '/add_address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Image.network(
                          'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 10,
                        margin: const EdgeInsets.only(top: 240),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 30, spreadRadius: 40,
                              offset: Offset(0, -10), // Shadow position
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 15,
                        child: Texts.text20(
                            'Смоленская улица, 8', AppColors.appBlack),
                      ),
                    ],
                  ),
                  const InputAddress(),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: MyBackButton(
                  bacColor: Colors.white,
                  iconColor: AppColors.appBlack,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 60,
        color: AppColors.appAddColor,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Texts.text16('Привязать карту', Colors.white),
            Texts.text12('и оплатить 200000', AppColors.appGrey),
          ],
        ),
      ),
    );
  }
}
