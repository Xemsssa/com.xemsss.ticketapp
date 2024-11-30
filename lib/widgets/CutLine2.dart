import 'package:flutter/material.dart';

import 'CutLine.dart';

class CutLine2 extends StatelessWidget {
  const CutLine2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
          child: const CutLine(isColor: true,
          )),
    );
  }
}