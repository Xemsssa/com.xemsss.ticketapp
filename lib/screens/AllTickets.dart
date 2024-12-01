import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/utils/lists.dart';

class Alltickets extends StatelessWidget {
  const Alltickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All ticket'),
      ),
      body: ListView(
        children: ticketList.map((ticket) => Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Ticketview(ticket: ticket, isColor: true,))).toList()
      )
    );
  }
}
