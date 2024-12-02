import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/screens/ticket_screen.dart';
import 'package:test_app/utils/AppRoutes.dart';
import 'package:test_app/utils/lists.dart';

class Alltickets extends StatelessWidget {
  const Alltickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All tickets'),
      ),
      body: ListView(
        children: ticketList.map((ticket) => GestureDetector(
          onTap:(){
            var index = ticketList.indexOf(ticket);
                Navigator.pushNamed(context, Approutes.ticketScreen, arguments: {
                  'index': index
                });
                // Navigator.pushNamed(context, '/ticket_screen');
          },
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Ticketview(ticket: ticket, isColor: true,)),
        )).toList()
      )
    );
  }
}
