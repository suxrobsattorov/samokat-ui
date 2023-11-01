import 'package:flutter/material.dart';
import 'package:samokat/presentation/widgets/add_address/input_address_container.dart';

class InputAddress extends StatefulWidget {
  const InputAddress({super.key});

  @override
  State<InputAddress> createState() => _InputAddressState();
}

class _InputAddressState extends State<InputAddress> {
  final _formKey = GlobalKey<FormState>();
  bool isOnTab1 = false,
      isOnTab2 = false,
      isOnTab3 = false,
      isOnTab4 = false,
      isOnTab5 = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onFieldSubmitted: (value) {
                setState(() {
                  isOnTab1 = false;
                });
              },
              onTap: () {
                setState(() {
                  isOnTab1 = true;
                  isOnTab2 = false;
                  isOnTab3 = false;
                  isOnTab4 = false;
                  isOnTab5 = false;
                });
              },
              decoration: InputDecoration(
                label:  InputAddressContainer(
                        inputName: 'Квартира или офис',
                        isOnTab: isOnTab1,
                      ),
                border:
                    isOnTab1 ? const UnderlineInputBorder() : InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onFieldSubmitted: (value) {
                setState(() {
                  isOnTab2 = false;
                });
              },
              onTap: () {
                setState(() {
                  isOnTab1 = false;
                  isOnTab2 = true;
                  isOnTab3 = false;
                  isOnTab4 = false;
                  isOnTab5 = false;
                });
              },
              decoration: InputDecoration(
                label: InputAddressContainer(
                  inputName: 'Подьезд',
                  isOnTab: isOnTab2,
                ),
                border:
                    isOnTab2 ? const UnderlineInputBorder() : InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onFieldSubmitted: (value) {
                setState(() {
                  isOnTab3 = false;
                });
              },
              onTap: () {
                setState(() {
                  isOnTab1 = false;
                  isOnTab2 = false;
                  isOnTab3 = true;
                  isOnTab4 = false;
                  isOnTab5 = false;
                });
              },
              decoration: InputDecoration(
                label: InputAddressContainer(
                  inputName: 'Етаж',
                  isOnTab: isOnTab3,
                ),
                border:
                    isOnTab3 ? const UnderlineInputBorder() : InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onFieldSubmitted: (value) {
                setState(() {
                  isOnTab4 = false;
                });
              },
              onTap: () {
                setState(() {
                  isOnTab1 = false;
                  isOnTab2 = false;
                  isOnTab3 = false;
                  isOnTab4 = true;
                  isOnTab5 = false;
                });
              },
              decoration: InputDecoration(
                label: InputAddressContainer(
                  inputName: 'Домофон',
                  isOnTab: isOnTab4,
                ),
                border:
                    isOnTab4 ? const UnderlineInputBorder() : InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              onFieldSubmitted: (value) {
                setState(() {
                  isOnTab5 = false;
                });
              },
              onTap: () {
                setState(() {
                  isOnTab1 = false;
                  isOnTab2 = false;
                  isOnTab3 = false;
                  isOnTab4 = false;
                  isOnTab5 = true;
                });
              },
              decoration: InputDecoration(
                label: InputAddressContainer(
                  inputName: 'Комментарий',
                  isOnTab: isOnTab5,
                ),
                border:
                    isOnTab5 ? const UnderlineInputBorder() : InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
