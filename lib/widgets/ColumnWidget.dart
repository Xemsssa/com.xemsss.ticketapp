import 'package:flutter/material.dart';

import 'package:test_app/utils/styles.dart';

class ColumnWidget extends StatelessWidget {
  final CrossAxisAlignment pos;
  final String text1, text2;
  const ColumnWidget({
    super.key, required this.text1, required this.text2, required this.pos
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: pos,
      children: [
        Text(text1, ),
        Text(text2, style: Styles.headlineStyle4,)
      ],
    );
  }
}