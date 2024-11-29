import 'package:flutter/material.dart';
import 'package:test_app/components/TicketView.dart';
import 'package:test_app/widgets/Tes.dart';
import 'package:test_app/utils/styles.dart';

import '../utils/lists.dart';

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
            Tes(text1: "Upcoming", text2: "Previous"),

            Padding(
                padding: EdgeInsets.all(10),
              child: Container(
                child: Ticketview(ticket: ticketList[0])
              )
            )
          ],
        ),
    );
  }
}
