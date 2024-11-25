import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/Header.dart';
import 'package:test_app/components/HotelScreen.dart';
import 'package:test_app/components/SearchBar.dart';
import 'package:test_app/components/ContainerUpcoming.dart';
import 'package:test_app/components/ContainerHotels.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/utils/styles.dart';

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
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/ticket-booking.png'),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                const Search(),
                const SizedBox(height: 30,),
                const HeaderText(),
                const SizedBox(height: 30,),
                const SingleChildScrollView(
                  padding: EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Ticketview(),
                      Ticketview()
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}