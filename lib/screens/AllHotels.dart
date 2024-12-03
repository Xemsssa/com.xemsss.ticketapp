import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/utils/AppRoutes.dart';
import 'package:test_app/utils/lists.dart';

import '../components/HotelScreenWidget.dart';
import 'app_layout.dart';

class AllHotels extends StatefulWidget {
  const AllHotels({super.key});

  @override
  State<AllHotels> createState() => _AllHotelsState();
}

class _AllHotelsState extends State<AllHotels> {


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(title: Text("All Hotels"),),
      // body: ListView(
          // children: hotelList.map((hotel) =>
          //      Container(
          //           width: size.width * 0.44,
          //          decoration: BoxDecoration(
          //      ),
          //      child: HotelScreen(hotel: hotel, wholeScreen: true,))).toList()
      // )
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              var hotel = hotelList[index];
              return GestureDetector(
                  onTap: () {
                    // print('my index is $index');
                    Navigator.pushNamed(context, Approutes.hotelScreen, arguments: {
                      'index':index
                    });
                  },
                  // child: HotelScreenWidget(hotel: hotel, index:index wholeScreen: false));
                  child: HotelScreenWidget(hotel: hotel));
            }
        )
      ),
    );
  }
}
