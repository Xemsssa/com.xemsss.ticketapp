import 'package:flutter/cupertino.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/utils/styles.dart';

class Hotelscreen extends StatelessWidget {
  const Hotelscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 280,
      width: size.width * 0.40,
      padding:EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: const Color(0xff7c94b6),
              // image: const DecorationImage(
              //   image: AssetImage('assets/images/hotelroom.jpeg',),
              //   fit: BoxFit.cover,
              // ),
            ),
          // ),
              child: Image.asset('assets/images/hotelroom.jpeg',
              fit: BoxFit.contain,),
          ),
          Text('Open Space', style: Styles.headlineStyle3),
          Text('London', style: Styles.headlineStyle4.copyWith(color: Styles.backgroundColor)),
          Text('\$25/night', style: Styles.headlineStyle3)
        ],
      ),
    );
  }
}
