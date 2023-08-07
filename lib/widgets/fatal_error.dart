import 'package:flutter/material.dart';
import 'package:test_web/fonts.dart';

class FatalError extends StatelessWidget {
  const FatalError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      height: 120,
      width: 600,
      decoration: BoxDecoration(
        color: Colors.red[400],
        border: Border.all(color: Colors.redAccent, width: 2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0x30ff0000),
            offset: Offset(0, 6),
            blurRadius: 10,
          ),
        ],
      ),
      child: const Center(
        child: Text('Invalid token', style: errorMessageText),
      ),
    );
  }
}
