import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/constants/app_colors.dart';
import 'package:samokat/presentation/screens/add_address_screen.dart';
import 'package:samokat/presentation/widgets/liniya.dart';
import 'package:samokat/presentation/widgets/order/product_order_item.dart';
import 'package:samokat/presentation/widgets/order/submit_button.dart';
import 'package:samokat/presentation/widgets/order/title_and_icon.dart';
import 'package:samokat/statics/options.dart';

import '../../model/Product.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    List<Product> products = Options.products2;
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.only(top: 60),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 50,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.bacColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Texts.text20('15 минут', Colors.grey),
                      Texts.text20('Смоленская улица, 8', AppColors.appBlack),
                      const SizedBox(height: 10),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ProductOrderItem(
                            product: products[index],
                          );
                        },
                      ),
                      const Liniya(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Texts.text16('Доставка', AppColors.appBlack),
                            Texts.text18('0 so\'m', Colors.grey),
                          ],
                        ),
                      ),
                      const Liniya(),
                      TitleAndIcon(
                        title: 'Промокод',
                        padding: 5,
                      ),
                      const Liniya(),
                      const SizedBox(height: 40),
                      TitleAndIcon(
                        title: 'Смоленская улица, 8',
                        padding: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Texts.text16(
                                'Оставить у двери', AppColors.appBlack),
                            CupertinoSwitch(
                              value: _isSwitch,
                              onChanged: (value) {
                                setState(() {
                                  _isSwitch = !_isSwitch;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      TitleAndIcon(
                        title: 'Оплата новой картой',
                        padding: 10,
                      ),
                    ],
                  ),
                ),
                const Liniya(),
                Texts.text16('Итого', Colors.grey),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 24,
                      child: Text(
                        '240000',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.appGrey,
                          decorationColor: AppColors.appBlack,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Texts.text24('150000', AppColors.appBlack),
                  ],
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AddAddressScreen.routeName),
                  child: SubmitButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
