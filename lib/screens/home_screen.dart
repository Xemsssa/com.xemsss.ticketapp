import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/Header.dart';
import 'package:test_app/components/SearchBar.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/screens/ticket_screen.dart';
import 'package:test_app/utils/AppRoutes.dart';
import 'package:test_app/utils/media.dart';
import 'package:test_app/utils/styles.dart';

// import 'package:test_app/lib/utils/app_routes.dart';

import '../components/ContainerHeading.dart';
import '../components/ContainerHeading2.dart';
import '../components/HotelScreenWidget.dart';
import '../utils/lists.dart';
import '../screens/AllTickets.dart';
import 'AllHotels.dart';

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
                      // child: Image.asset('assets/images/ticket-booking.png'),
                      child: Image.asset(AppMedia.logo),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                const Search(),
                const SizedBox(height: 30,),
                // const HeaderText(),
                // ContainerHeading(string: 'Upcoming Flight',func:() => Navigator.pushNamed(context, '/all_tickets')),

                ContainerHeading2(route: "/all_tickets", nameRoute: "Upcoming Flight",),

                const SizedBox(height: 30,),
                SingleChildScrollView(
                  padding: const EdgeInsets.only(right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((ticket) => GestureDetector(
                      onTap: (){
                        var index = ticketList.indexOf(ticket);
                        // print("ticket is ${ticket}");
                        // print("index is ${index}");
                        // Navigator.push(context, const TicketScreen() as Route<Object?>);
                        Navigator.pushNamed(context, Approutes.ticketScreen, arguments: {
                          'index': index
                        });
                        // Navigator.pushNamed(context, '/ticket_screen');
                      },
                        child: Ticketview(ticket: ticket, isColor: true,))).toList()
                  ),
                ),
                const SizedBox(height: 30,),
                // const ContainerHeading(string: 'Hotels'),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('Hotels',
                //       style: Styles.headlineStyle2,),
                //     InkWell(
                //       onTap: () {
                //         // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const AllHotels()));
                //         Navigator.pushNamed(context, '/all_hotels');
                //       },
                //       child: Text('View All',
                //         style: Styles.headlineStyle4,),
                //     ),
                //   ],
                // ),
                ContainerHeading2(route: "/all_hotels", nameRoute: "Hotels",),

                const SizedBox(height: 30,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.map((hotel) => GestureDetector(
                        onTap: () {
                          var index = hotelList.indexOf(hotel);
                          Navigator.pushNamed(context, Approutes.hotelScreen, arguments: {
                            'index': index
                          });
                        },
                        child: HotelScreenWidget(hotel: hotel))).toList(),
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

