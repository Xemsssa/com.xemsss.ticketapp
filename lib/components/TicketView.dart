import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/app_layout.dart';
import 'package:test_app/widgets/thin_container.dart';

import '../utils/styles.dart';
import '../widgets/CutLine.dart';
import '../widgets/FlightPlane.dart';

class Ticketview extends StatelessWidget {
  final Map<String, dynamic>  ticket;
  final bool? isColor;
  const Ticketview({super.key, required this.ticket, this.isColor});

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
              decoration: BoxDecoration(
                color: isColor == true ? Styles.primaryColor : Colors.white,
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
                        Text(ticket['from']['code'], style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3.copyWith(color: Colors.black) ),
                        // Spacer(),
                        Expanded(child: Container()),
                        ThinContainer(isColor: true),
                        const Expanded(child: FlightPlane(isColor: true)),
                        ThinContainer(isColor: true),
                        Expanded(child: Container()),
                        // Spacer(),
                        Text(ticket['to']['code'], style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black))
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(ticket['from']['name'], style: isColor == true ? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4.copyWith(color: Colors.grey)),
                        Text(ticket['flying_time'], style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3.copyWith(color: Colors.black)),
                        Text(ticket['to']['name'], style: isColor == true ? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle3.copyWith(color: Colors.grey))
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
            decoration: BoxDecoration(
              color: isColor == true ? Color(0xfff37b67) : Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: isColor == true ? Radius.circular(20):Radius.circular(00) ,
                  bottomRight: isColor == true ? Radius.circular(20):Radius.circular(00)
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
                          Text(ticket['date'], style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3.copyWith(color: Colors.black)),
                          Text('Date', style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: [
                          Text(ticket['departure_time'], style: isColor == true? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3.copyWith(color: Colors.black)),
                          Text('Departure time', style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.grey) )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3.copyWith(color: Colors.black)),
                          Text('Number', style: isColor == true ? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3.copyWith(color: Colors.grey))
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
