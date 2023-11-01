import 'package:flutter/material.dart';
import 'package:samokat/presentation/constants/Texts.dart';
import 'package:samokat/presentation/widgets/product_details/close_button.dart';
import 'package:samokat/presentation/widgets/product_details/like_button.dart';
import 'package:samokat/presentation/widgets/product_details/product_add.dart';
import 'package:samokat/presentation/widgets/product_details/product_discount.dart';

import '../../statics/options.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';
import '../widgets/list_view_horizontal.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const routeName = '/product_details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool _isLike = false;

  Container liniya() {
    return Container(
      width: double.infinity,
      height: 0.5,
      margin: const EdgeInsets.only(top: 15, bottom: 5),
      color: AppColors.appGrey,
    );
  }

  Column titleAndText(String title, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.text14(
          title,
          Colors.grey,
        ),
        const SizedBox(height: 5),
        Texts.text14(
          text,
          AppColors.appBlack,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              'https://cm.samokat.ru/processed/l/original/60879_1111576615.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width - 80,
                                      padding: const EdgeInsets.all(0),
                                      child: Texts.text18(
                                        'Колбаса варёная Вязанка Докторская ГОСТ, категория А',
                                        AppColors.appBlack,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => setState(() {
                                        _isLike = !_isLike;
                                      }),
                                      child: Like(
                                        icon: AppIcons.like,
                                        isLike: _isLike,
                                      ),
                                    ),
                                  ],
                                ),
                                Texts.text18(
                                  '450 г',
                                  Colors.grey,
                                ),
                                liniya(),
                                Texts.text14(
                                  'В 100 граммах',
                                  Colors.grey,
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Texts.text16('160', AppColors.appBlack),
                                        Texts.text14('Ккал', Colors.grey),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Texts.text16('11 г', AppColors.appBlack),
                                        Texts.text14('Белки', Colors.grey),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Texts.text16('13 г', AppColors.appBlack),
                                        Texts.text14('Жиры', Colors.grey),
                                      ],
                                    ),
                                  ],
                                ),
                                liniya(),
                                titleAndText('Состав',
                                    'Свинина, мясо птицы кусковое, говядина, вода питьевая, мясо цыплёнка-бройлера механической обвалки, белковый стабилизатор (шкурка свиная, вода питьевая), молоко коровье сухое, сыворотка молочная сухая, крахмал кукурузный, смесь посолочно-нитритная (соль, фиксатор окраски нитрит натрия), соль, продукты яичные, белок животный (свиной, говяжий), пшеничная клетчатка, стабилизаторы (пирофосфаты, полифосфаты), регуляторы кислотности (трифосфаты, лактат кальция), виноградный сахар, натуральные пряности и экстракты пряностей, загустители (камеди: рожкового дерева, гуаровая, ксантановая, конжаковая; каррагинан из водорослей Eucheuma, агар), антиокислитель аскорбиновая кислота, краситель кармины. В продукте возможно наличие следов горчицы, сельдерея и продуктов их переработки'),
                                const SizedBox(height: 10),
                                titleAndText('Срок хранения', '2 месяца'),
                                const SizedBox(height: 10),
                                titleAndText('Условия хранения', 'При температуре от 0°С до +6°С'),
                                const SizedBox(height: 10),
                                titleAndText('Производитель', 'ЗАО Стародворские Колбасы, Россия'),
                                liniya(),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListViewHorizontal(
                      title: 'O\'xshash maxsulotlar',
                      isMore: false,
                      products: Options.products,
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
              ProductDiscount(discount: 35),
              Positioned(
                right: 15,
                top: 15,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Close(icon: AppIcons.close),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ProductAdd(
                  price: 18000,
                  discountPrice: 12000,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
