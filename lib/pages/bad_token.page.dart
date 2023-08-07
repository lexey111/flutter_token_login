import 'package:flutter/material.dart';
import 'package:test_web/pages/app_page.dart';
import 'package:test_web/widgets/fatal_error.dart';

class BadTokenPage extends StatelessWidget {
  const BadTokenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(title: 'Invalid token', child: FatalError());
  }
}
