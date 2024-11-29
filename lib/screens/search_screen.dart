import 'package:flutter/material.dart';
import 'package:test_app/utils/styles.dart';

import '../components/ContainerHeading.dart';
import '../widgets/IconText.dart';
import '../widgets/Tes.dart';
import '../widgets/TicketButton.dart';
import 'app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            // Padding(
              // padding: const EdgeInsets.all(10.0),
              // child:
              Text('What are \nyou looking for?',style: Styles.headlineStyle.copyWith(fontSize: 48),),
            // ),
            // FittedBox(text1: 'Airline tickets', text2: 'hotels'),
           const Tes(text1: "Airline tickets", text2: 'Hotels'),


            const IconText(icon: Icons.flight_takeoff , text: "Departure",),

            const IconText(icon: Icons.flight_land , text: "Arrival",),
            // SizedBox(height: 10,),

            const TicketButton(),

            const SizedBox(height: 40),

            const ContainerHeading(string: 'Upcoming Flight'),
            
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: size.height *0.35,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/hotelroom.jpeg'),
                        const SizedBox(height: 10,),
                        Text('20% discount on the early booking of this flight.Don\'t miss', style: Styles.headlineStyle2),
                      ]
                    ),
                  ),
                  Container(
                      width: size.width * 0.43,
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          // padding: EdgeInsets.only(bottom: 10),
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('Discount for survay', style: Styles.headlineStyle2.copyWith(color: Colors.white)),
                              Text('Take the survay about our services and get discount', style: Styles.headlineStyle3.copyWith(color: Colors.white))
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.99,
                          height: size.height * 0.14,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('Take love', style: Styles.headlineStyle2.copyWith(color: Colors.white)),
                              const Text('smile')
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
