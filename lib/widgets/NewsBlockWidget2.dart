import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

class NewsBlockWidget2 extends StatelessWidget {
  const NewsBlockWidget2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.25,
      // height: 155,
      width: size.width * 0.45,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Discount for survay',
              style: Styles.headlineStyle2
                  .copyWith(color: Colors.white)),
          Text(
              'Take the survay about our services and get discount',
              style: Styles.headlineStyle3
                  .copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
