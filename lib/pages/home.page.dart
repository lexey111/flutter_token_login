import 'package:flutter/material.dart';
import 'package:test_web/globals.dart';
import 'package:test_web/pages/app_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
        title: 'Home', child: Column(children: [const HomeWidget()]));
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (!myStore.hasToken) {
      print('error');
      return Container();
    }

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 60.0),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color(0xcc000000),
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Color(0x80000000),
              offset: Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Line 1'),
              Text('Line 2'),
              Text('Line 3'),
              Text('Line 4'),
            ]));
  }
}
