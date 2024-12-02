import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

import '../utils/media.dart';

class NewsBlockWidget extends StatelessWidget {
  const NewsBlockWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10, right: 10),
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: Styles.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppMedia.hotelRoom),
                  // fit:
                )),
          ),
          // Image.asset(AppMedia.thotelRoom),
          Text(
              '20% discount on the early booking of this flight.Don\'t miss',
              style: Styles.headlineStyle2),
        ],
      ),
    );
  }
}