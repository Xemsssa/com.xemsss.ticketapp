import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThinContainer extends StatelessWidget {
  const ThinContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width:4,color: Colors.white),
      ),
    );
  }
}
