import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_web/widgets/footer.dart';
import 'package:test_web/widgets/header.dart';

import '../globals.dart';

class AppPage extends StatelessWidget {
  AppPage({super.key, required this.title, required this.child});

  final Widget? child;
  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Observer(
        builder: (_) => Scaffold(
            appBar: myStore.hasToken ? makeHeader() : makeEmptyHeader(),
            body: Title(
                title: title,
                color: Colors.redAccent, //no importance here but required
                child: Container(
                    width: screenWidth,
                    height: screenHeight,
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: <Color>[
                          Color(0xff2f9493),
                          Color(0xff0d3156),
                          Color(0xff001c42),
                        ],
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            child: Center(child: child),
                          ),
                          Expanded(child: Container()),
                          const FakeFooter()
                        ])))));
  }
}
