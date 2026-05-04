import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final String text;

  const DetailPage({
    super.key,
    required this.index,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Elemento $index: $text',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
