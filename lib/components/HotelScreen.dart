import 'package:flutter/cupertino.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/utils/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic>  hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 280,
      width: size.width * 0.45,
      padding:const EdgeInsets.all(15),
      // ignore: prefer_const_constructors
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
          Text(hotel['place'], style: Styles.headlineStyle3),
          Text(hotel['destination'], style: Styles.headlineStyle4.copyWith(color: Styles.backgroundColor)),
          Text('\$${hotel['price']}/night', style: Styles.headlineStyle3)
        ],
      ),
    );
  }
}
