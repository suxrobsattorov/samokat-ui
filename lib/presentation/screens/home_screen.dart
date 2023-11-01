import 'package:flutter/material.dart';

import '../widgets/home/home_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: const Scaffold(
        backgroundColor: Colors.white,
        /*body: Center(
          child: Container(
            color: Colors.green,
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  barrierColor: Colors.white,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('DDD'),
            ),
          ),
        ),*/
        body: HomeBottomSheet(),
      ),
    );
  }
}
