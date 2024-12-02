import 'package:flutter/cupertino.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/utils/media.dart';
import 'package:test_app/utils/styles.dart';

class HotelScreenWidget extends StatelessWidget {
  final Map<String, dynamic>  hotel;
  final bool wholeScreen;
  const HotelScreenWidget({super.key, required this.hotel, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    final size = MediaQuery.of(context).size;
    return Container(
      // height: wholeScreen == true ? 240: 240,
      // width: wholeScreen == true ? size.width * 0.25 : size.width * 0.50,
      padding:const EdgeInsets.all(15),
      // ignore: prefer_const_constructors
      margin: wholeScreen == true?EdgeInsets.all(10) : EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: wholeScreen == true ? size.width * 0.95: size.width * 0.45,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
              // color: const Color(0xff7c94b6),
          //     image: const DecorationImage(
          //       // image: AssetImage('assets/images/hotelroom.jpeg',),
          //       image: AssetImage(AppMedia.hotelRoom),
          //       fit: BoxFit.cover,
          //     ) ,
          //   ),
            child: Container(
              height: 140,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.gray,
                image: DecorationImage(
                  image: AssetImage(
                    AppMedia.hotelRoom
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          // child: Image.asset('assets/images/hotelroom.jpeg',
          //     fit: BoxFit.cover,),
          // ),
          Text(hotel['place'], style: Styles.headlineStyle3),
          Text(hotel['destination'], style: Styles.headlineStyle4.copyWith(color: Styles.backgroundColor)),
          Text('\$${hotel['price']}/night', style: Styles.headlineStyle3)
        ],
      ),
    );
  }
}
