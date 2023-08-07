import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:test_web/fonts.dart';
import 'package:test_web/globals.dart';

PreferredSizeWidget makeEmptyHeader() {
  return AppBar(
      title: Observer(builder: (_) => const HeaderUser()),
      toolbarHeight: 75,
      centerTitle: true,
      backgroundColor: const Color(0xe0001c42),
      leadingWidth: 320);
}

PreferredSizeWidget makeHeader() {
  return AppBar(
    title: const HeaderUser(),
    toolbarHeight: 75,
    centerTitle: true,
    backgroundColor: const Color(0xe0001c42),
    leadingWidth: 320,
    leading: Row(children: [
      const Divider(endIndent: 40),
      HeaderPill(title: 'Item 1', icon: CupertinoIcons.chart_bar_circle_fill),
      HeaderPill(title: 'Item 2', icon: CupertinoIcons.person_circle_fill),
      HeaderPill(title: 'Item 3', icon: CupertinoIcons.tickets_fill),
    ]),
    actions: [
      HeaderPill(icon: CupertinoIcons.person),
      HeaderPill(icon: CupertinoIcons.settings),
      const Divider(endIndent: 40),
    ],
  );
}

class HeaderUser extends StatelessWidget {
  const HeaderUser({super.key});

  @override
  Widget build(BuildContext context) {
    final color = myStore.user == 'ERROR'
        ? const Color(0xffff5555)
        : const Color(0x0dffffff);

    return Container(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(myStore.user, style: biggerHeaderText),
    );
  }
}

class HeaderPill extends StatelessWidget {
  HeaderPill({super.key, this.title, this.icon});

  final IconData? icon;
  final String? title;
  final TextStyle style = normalHeaderText.copyWith(color: Colors.white38);

  @override
  Widget build(BuildContext context) {
    // icon only
    if (title == null && icon != null) {
      return TextButton(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.white30;
            }),
          ),
          onPressed: () => print(title),
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Icon(
                icon,
                size: 20.0,
              )));
    }
    // text only
    if (title != null && icon == null) {
      return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Center(child: Text('$title', style: style)));
    }
    // text and icon
    if (title != null && icon != null) {
      return TextButton(
          onPressed: () => print(title),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) return Colors.white;
              return Colors.white30;
            }),
          ),
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Center(
                  child: Row(children: [
                Icon(
                  icon,
                  size: 16.0,
                ),
                const Divider(endIndent: 5),
                Text('$title')
              ]))));
    }
    // empty
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: const Divider(endIndent: 10));
  }
}
