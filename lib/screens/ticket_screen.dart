import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/widgets/CutLine.dart';
import 'package:test_app/widgets/Tes.dart';
import 'package:test_app/utils/styles.dart';

import '../utils/lists.dart';
import '../widgets/ColumnWidget.dart';
import '../widgets/CutLine2.dart';
// import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            ListView(
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
                    SizedBox(height: 2,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.white
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColumnWidget(text1: "Flutter Dash", text2: "Passenger",pos: CrossAxisAlignment.start ),

                            // Column  (
                            //   crossAxisAlignment: CrossAxisAlignment.end,
                            //   children: [
                            //     const Text("5221 478566"),
                            //     Text("Passport", style: Styles.headlineStyle4,),
                            //   ],
                            // ),
                            ColumnWidget(text1: "5221 478566", text2: "Passport",pos: CrossAxisAlignment.end ),
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColumnWidget(text1: "005544477147", text2: "Number off e-ticket",pos: CrossAxisAlignment.start ),

                            ColumnWidget(text1: "B2SG28", text2: "Booking code",pos: CrossAxisAlignment.end ),
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
                                Text("Payment method", style: Styles.headlineStyle4,)
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("\$249.99"),
                                Text("Price", style: Styles.headlineStyle4,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 2,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft:  Radius.circular(20),
                          ),
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
                        // Container(
                        //   padding: EdgeInsets.only(top: 20, bottom: 20),
                        //   margin: EdgeInsets.only(left: 2, right: 20),
                        //   color: Styles.white,
                        //   child: Container(
                        //     padding: EdgeInsets.symmetric(horizontal: 15),
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(15),
                        //       child: BarcodeWidget(
                        //         barcode: Barcode.code128(),
                        //           data('https://github.com'),
                        //         drawText: false,
                        //         color: Styles.textColor,
                        //         width: double.infinity ,
                        //         heigh: 70,
                        //       )`
                        //     ),
                        //   ),
                        // )
                      ),
                    ),
                  ],
                ),
              ),
              Ticketview(ticket: ticketList[0], isColor: true,),
            ],
          ),
            Positioned(
              left: 19,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor, width: 2,
                  ),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 19,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Styles.textColor, width: 2,
                  ),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
         ],
        ),
    );
  }
}


