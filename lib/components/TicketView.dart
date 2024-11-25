import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/widgets/thin_container.dart';

import '../utils/styles.dart';
import '../widgets/CutLine.dart';
import '../widgets/FlightPlane.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return  Column(
      children: [
        Container(margin: EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            width: size.width - 60,
            height: 100,
            child: Container(
              // padding: ,
              decoration: const BoxDecoration(
                color: Color(0xff526779),
                    borderRadius:
                    BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
          
              ),
              child : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('NYC', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        // Spacer(),
                        Expanded(child: Container()),
                        const ThinContainer(),
                        const Expanded(child: FlightPlane()),
                        const ThinContainer(),
                        Expanded(child: Container()),
                        // Spacer(),
                        Text('LDN', style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
          
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('New York', style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                        Text('8h 30m', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        Text('London', style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          
          ),
        ),
        SizedBox(
          width: size.width -60,
          height: 100,
          child: Container(
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xfff37b67),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
              )
            ),
            child : Column(
              children: [

                CutLine(),

                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 May', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Text('Date', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        children: [
                          Text('08:00 am', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Text('Departure time', style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                          Text('Number', style: Styles.headlineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
