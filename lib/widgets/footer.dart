import 'package:flutter/material.dart';
import 'package:test_web/fonts.dart';

class FakeFooter extends StatelessWidget {
  const FakeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: const BoxDecoration(color: Color(0x10ffffff)),
      alignment: Alignment.center,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(
              // padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                FooterPill(title: 'Text 1'),
                FooterPill(title: 'Text 2'),
                FooterPill(title: 'Text 3'),
                FooterPill(title: 'Text 4'),
              ])),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FooterPill(title: 'Very long text line below the first one'),
          ])
        ]),
      ),
    );
  }
}

class FooterPill extends StatelessWidget {
  FooterPill({super.key, required this.title});

  final String title;
  final TextStyle style = normalHeaderText.copyWith(color: Colors.white30);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Center(child: Text(title, style: style)));
  }
}
