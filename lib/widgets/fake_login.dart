import 'package:flutter/material.dart';
import 'package:test_web/fonts.dart';

class FakeLogin extends StatelessWidget {
  const FakeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20.0),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        height: 300,
        width: 600,
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
        child: const LoginForm());
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      LoginField(caption: 'Login'),
      LoginField(caption: 'Password'),
      Divider(height: 32, color: Color(0x00000000)),
      ElevatedButton(onPressed: null, child: Text('LOGIN', style: bigText))
    ]);
  }
}

class LoginField extends StatelessWidget {
  const LoginField({super.key, required this.caption});

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
      child: TextFormField(
        style: normalText,
        obscureText: true,
        readOnly: true,
        enabled: false,
        initialValue: 'getting data...',
        decoration: InputDecoration(
          labelText: caption,
          labelStyle: normalText,
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}
