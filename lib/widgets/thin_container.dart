import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThinContainer extends StatelessWidget {
  final bool? isColor;
  ThinContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width:4, color: isColor == true? Colors.white : Colors.blueAccent),
      ),
    );
  }
}
