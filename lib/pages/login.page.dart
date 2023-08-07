import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:test_web/fonts.dart';
import 'package:test_web/pages/app_page.dart';
import 'package:test_web/widgets/fake_login.dart';

import '../globals.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? token = Uri.base.queryParameters["token"] ?? const String.fromEnvironment('token');
    print('token: $token');

    onError() => GoRouter.of(context).go('/error');
    onSuccess() => GoRouter.of(context).go('/home');

    myStore.setTokenStringDelayed(token, onError, onSuccess);

    return AppPage(
        title: 'Login...',
        child: Column(children: [
          const FakeLogin(),
          Observer(builder: (_) => LoginBanner(text: myStore.stateString))
        ]));
  }
}

class LoginBanner extends StatelessWidget {
  const LoginBanner({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 20.0),
      alignment: Alignment.center,
      width: 600,
      child: Text(text, style: processText),
    );
  }
}
