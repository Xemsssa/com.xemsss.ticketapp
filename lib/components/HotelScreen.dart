import 'package:flutter/cupertino.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/utils/styles.dart';

class Hotelscreen extends StatelessWidget {
  const Hotelscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
        color: Styles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
              child: Image.asset('assets/images/hotelroom.jpeg'),
          ),
          Text('Open Space', style: Styles.headlineStyle3),
          Text('London', style: Styles.headlineStyle4),
          Text('\$25/night', style: Styles.headlineStyle3)
        ],
      ),
    );
  }
}
