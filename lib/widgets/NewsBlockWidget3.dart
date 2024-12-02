import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';


class NewsBlockWidget3 extends StatelessWidget {
  const NewsBlockWidget3({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      padding: EdgeInsets.all(20),
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Text('Take love',
              style: Styles.headlineStyle2
                  .copyWith(color: Colors.white)),
          const Text('smile')
        ],
      ),
    );
  }
}