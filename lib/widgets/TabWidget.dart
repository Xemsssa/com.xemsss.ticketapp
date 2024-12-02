import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';
class TabsWidget extends StatelessWidget {
  final String text;
  final bool? tabBorder;
  const TabsWidget({
    super.key,
    required this.size,
    required this.text,
    this.tabBorder
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.45,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: tabBorder == true ? Styles.white: Styles.lightGray,
            borderRadius: tabBorder == true ?
            const BorderRadius.horizontal(left: Radius.circular(50)):
            const BorderRadius.horizontal(right: Radius.circular(50))
        ),
        child: Center(child: Text(text)));
  }
}
