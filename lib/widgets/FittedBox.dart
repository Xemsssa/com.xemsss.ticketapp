import 'package:flutter/material.dart';

import '../screens/app_layout.dart';

class FittedBox extends StatelessWidget {
  const FittedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.45,
              child:
              Center(child: Text('Airline ticket')),
            ),
            Container(
              width: size.width * 0.45,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.grey
              ),
              child:
              Center(child: Text('Hotels')),
            )
          ],
        ),
      ),
    );
  }
}