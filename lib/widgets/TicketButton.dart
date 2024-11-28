import 'package:flutter/material.dart';

class TicketButton extends StatelessWidget {
  const TicketButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text('Find tickets',
            style: TextStyle(
                color: Colors.white
            )
        )),
      ),
    );
  }
}
