import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/utils/lists.dart';

import '../components/HotelScreen.dart';
import 'app_layout.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(title: Text("All Hotels"),),
      body: ListView(
          children: hotelList.map((hotel) =>
               Container(
                    width: size.width * 0.44,
                   decoration: BoxDecoration(
               ),
               child: HotelScreen(hotel: hotel, wholeScreen: true,))).toList()
      ),
    );
  }
}
