import 'package:flutter/material.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/widgets/CutLine.dart';
import 'package:test_app/widgets/Tes.dart';
import 'package:test_app/utils/styles.dart';

import '../utils/lists.dart';
import '../widgets/CutLine2.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Tickets', style: Styles.headlineStyle),
            ),
            const Tes(text1: "Upcoming", text2: "Previous"),

            Padding(
                padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Ticketview(ticket: ticketList[0]),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Flutter Dash"),
                              Text("Passenger", style: Styles.headlineStyle3,)
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("5221 478566"),
                              Text("Passport", style: Styles.headlineStyle3,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const CutLine2(),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("005544477147"),
                              Text("Number off e-ticket", style: Styles.headlineStyle3,)
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("B2SG28"),
                              Text("Booking code", style: Styles.headlineStyle3,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const CutLine2(),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/visa.png',
                                  height: 14,),
                                  const Text('***'),
                                  const Text("2462")
                                ]
                              ),
                              Text("Payment method", style: Styles.headlineStyle3,)
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("\$249.99"),
                              Text("Price", style: Styles.headlineStyle3,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        height:70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                          border: Border.all(
                            width: 2, color: Styles.primaryColor
                          )
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
    );
  }
}

