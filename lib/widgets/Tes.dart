import 'package:flutter/material.dart';

import '../screens/app_layout.dart';
import 'package:test_app/utils/styles.dart';

class Tes extends StatelessWidget {
  final String text1, text2;
  const Tes({
    super.key, required this.text1, required this.text2
    // required this.sie,
  });

  // final size;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
// padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Styles.backgroundColor,
            borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Styles.lightGray)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.45,

              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Styles.white
              ),
              child:
              Center(child: Text(text1, style: const TextStyle(
                fontWeight: FontWeight.bold
              ),)),
            ),
            SizedBox(
              width: size.width * 0.45,
              child:
              Center(child: Text(text2, style: TextStyle(color: Styles.primaryColor, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      )
    );
  }
}
