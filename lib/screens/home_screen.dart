import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/Header.dart';
import 'package:test_app/components/SearchBar.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/utils/styles.dart';

import '../components/ContainerHeading.dart';
import '../components/HotelScreen.dart';
import '../utils/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Header(),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/ticket-booking.png'),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                const Search(),
                const SizedBox(height: 30,),
                // const HeaderText(),
                const ContainerHeading(string: 'Upcoming Flight'),
                const SizedBox(height: 30,),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((ticket) => Ticketview(ticket: ticket, isColor: true,)).toList()
                  ),
                ),
                const SizedBox(height: 30,),
                const ContainerHeading(string: 'Hotels'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
                    // children:
                    // [
                    //   Hotelscreen()
                    // ]
                )
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

